<?php

namespace App\Http\Controllers;

use App\Models\ChatbotSession;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

class ChatbotController extends Controller
{
    public function __construct()
    {
        if (!Auth::check()) {
            return abort(404);
        }
    }

    public function requestChatbot(array $contents)
    {
        $response = Http::post(
            // "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=",
            config('general-settings.ai.url').config('general-settings.ai.api_key'),
            ['contents' => $contents]
        );

        $json = $response->json();
        $reply = $json['candidates'][0]['content']['parts'][0]['text'] ?? null;
        return [$json, $reply];
    }

    public function analyzeImage($imagePath)
    {
        $image = Storage::get($imagePath);
        $base64 = base64_encode($image);

        $response = Http::post(
            "https://vision.googleapis.com/v1/images:annotate?key=", //API_KEY
            [
                'requests' => [[
                    'image' => ['content' => $base64],
                    'features' => [
                        ['type' => 'LABEL_DETECTION', 'maxResults' => 5],
                        ['type' => 'TEXT_DETECTION'],
                        ['type' => 'WEB_DETECTION'],
                    ],
                ]]
            ]
        );

        return $response->json('responses.0');
    }

    public function generateArticle($title, $imagePath, $prompt)
    {
        $data = $this->analyzeImage($imagePath);
        $labels = collect($data['labelAnnotations'] ?? [])->pluck('description')->join(', ');
        $texts = collect($data['textAnnotations'] ?? [])->pluck('description')->first();
        $webDesc = collect($data['webDetection']['webEntities'] ?? [])->pluck('description')->join(', ');

        $requestPrompt = "Tugas kamu adalah membuat artikel yang menarik dengan metadata SEO yang baik.

            Berikut adalah datanya:
            - Judul: $title.
            - Label dari gambar: $labels.
            - Teks dalam gambar: $texts.
            - Topik terkait gambar: $webDesc.
            - Prompt tambahan dari pengguna: $prompt.

            Berikan hasil dengan format sebagai berikut:

            [Artikel]
            (tulis artikel sekitar 300-500 kata)

            [Rinkasan]
            (tulis ringkasan artikel sekitar 30-50 karakter)

            [Meta Title]
            (meta title, maksimal 60 karakter)

            [Meta Description]
            (meta description, maksimal 160 karakter)";
        Log::error($requestPrompt);

        try {
            [$json, $reply] = $this->requestChatbot([
                [
                    'parts' => [
                        ['text' => $requestPrompt]
                    ]
                ]
            ]);

            $session =  ChatbotSession::where('title', $title)->where('user_id', Auth::user()->id)->first()
            ?? ChatbotSession::create([
                'user_id' => Auth::user()->id,
                'title' => $title,
            ]);

            $session->messages()->create([
                'sender' => 'bot',
                'message' => $reply,
            ]);

            $content = $metaTitle = $metaDescription = null;

            if ($reply) {
                preg_match('/\[Artikel\](.*?)\[Ringkasan\]/s', $reply, $articleMatch);
                preg_match('/\[Ringkasan\](.*?)\[Meta Title\]/s', $reply, $resumeMatch);
                preg_match('/\[Meta Title\](.*?)\[Meta Description\]/s', $reply, $titleMatch);
                preg_match('/\[Meta Description\](.*)/s', $reply, $descMatch);

                $content = trim($articleMatch[1] ?? '');
                $previewContent = trim($resumeMatch[1] ?? '');
                $metaTitle = trim($titleMatch[1] ?? '');
                $metaDescription = trim($descMatch[1] ?? '');
            }

            if (!$content) {
                $content = 'Gagal menghasilkan artikel.';
            }
            if (!$previewContent) {
                $previewContent = 'Gagal menghasilkan artikel.';
            }
            if (!$metaTitle) {
                $metaTitle = 'Gagal membuat judul.';
            }
            if (!$metaDescription) {
                $metaDescription = 'Gagal membuat deskripsi.';
            }

            return [$content, $previewContent, $metaTitle, $metaDescription];

        } catch (\Throwable $e) {
            Log::error('Gagal generate artikel: ' . $e->getMessage());
            return ['Gagal membuat artikel.', 'Gagal membuat priview artikel.', 'Gagal membuat judul.', 'Gagal membuat deskripsi.'];
        }

        return [$content, $meta_title, $meta_description];
    }

    public function send(Request $request)
    {
        $request->validate([
            'message' => 'required|string',
            'session_id' => 'nullable|exists:chatbot_sessions,id',
        ]);

        $user = $request->user();

        $title = 'Date ' . now()->format('d-m-Y H:i:s');

        if (!$request->session_id) {
            list( , $reply) = $this->requestChatbot(
                $contents = [[
                    'parts' => [[
                        'text' => "Buat **hanya satu** judul yang pendek dan ringkas (maksimal 5 kata), tanpa memberikan lebih dari satu opsi, dan tanpa bullet atau daftar, untuk pesan berikut:\n\n" . $request->message
                    ]]
                ]]
            );

            if ($reply) {
                $reply = preg_replace([
                    '/\*\*(.*?)\*\*/',
                    '/\*(.*?)\*/',
                    '/\_(.*?)\_/',
                    '/\`(.*?)\`/',
                ], '$1', $reply);

                $title = trim($reply);
            }
        }

        $session = $request->session_id
            ? ChatbotSession::findOrFail($request->session_id)
            : ChatbotSession::create([
                'user_id' => $user->id,
                'title' => $title,
            ]);

        $session->messages()->create([
            'sender' => 'user',
            'message' => $request->message,
        ]);

        $history = $session->messages()
            ->orderBy('created_at', 'desc')
            ->take(10)
            ->get(['sender', 'message'])
            ->reverse();

        $contents = $history->map(function ($msg) {
            return [
                'role' => $msg->sender === 'user' ? 'user' : 'model',
                'parts' => [['text' => $msg->message]],
            ];
        })->values()->all();

        list($json, $reply) = $this->requestChatbot($contents);

        if (empty($reply)) {
            logger()->warning('Empty AI response', ['response' => $json]);
            $reply = 'Tidak ada balasan.';
        } else {
            $reply = preg_replace([
                '/\*\*(.*?)\*\*/',
                '/\*(.*?)\*/',
                '/\_(.*?)\_/',
                '/\`(.*?)\`/',
            ], '$1', $reply);
        }

        $session->messages()->create([
            'sender' => 'bot',
            'message' => $reply,
        ]);

        return response()->json([
            'reply' => $reply,
            'session_id' => $session->id,
        ]);
    }

    public function getSessions()
    {
        return ChatbotSession::where('user_id', Auth::user()->id)
            ->orderByDesc('updated_at')
            ->get(['id', 'title']);
    }

    public function getMessages($id)
    {
        $session = ChatbotSession::where('id', $id)
            ->where('user_id', Auth::user()->id)
            ->firstOrFail();

        return $session->messages()->orderBy('created_at')->get(['sender', 'message']);
    }
}
