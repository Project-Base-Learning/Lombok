<?php

namespace App\Http\Controllers;

use App\Models\ChatbotSession;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;

class ChatbotController extends Controller
{
    public function __construct()
    {
        if (!Auth::check()) {
            return redirect(route('home'));
        }
    }

    public function send(Request $request)
    {
        $request->validate([
            'message' => 'required|string',
            'session_id' => 'nullable|exists:chatbot_sessions,id',
        ]);

        $user = $request->user();

        $title = 'Date ' . now()->format('d-m-Y H:i:s');

        if (! $request->session_id) {
            $aiResponse = Http::post(
                "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=AIzaSyC9KL5RMMpJMHUh61RfDGQ4GDrlciQiR44",
                [
                    'contents' => [[
                        'parts' => [[
                            'text' => "Buat **hanya satu** judul yang pendek dan ringkas (maksimal 5 kata), tanpa memberikan lebih dari satu opsi, dan tanpa bullet atau daftar, untuk pesan berikut:\n\n" . $request->message
                        ]]
                    ]]
                ]
            );

            $aiTitle = $aiResponse->json('candidates.0.content.parts.0.text') ?? null;

            if ($aiTitle) {
                // Hilangkan format markdown seperti **bold**, _italic_, dll
                $aiTitle = preg_replace([
                    '/\*\*(.*?)\*\*/', // bold
                    '/\*(.*?)\*/',     // italic
                    '/\_(.*?)\_/',     // italic
                    '/\`(.*?)\`/',     // code
                ], '$1', $aiTitle);

                $title = trim($aiTitle);
            }
        }

        $session = $request->session_id
            ? ChatbotSession::findOrFail($request->session_id)
            : ChatbotSession::create([
                'user_id' => $user->id,
                'title' => $title,
            ]);

        // Simpan pesan user terlebih dahulu
        $session->messages()->create([
            'sender' => 'user',
            'message' => $request->message,
        ]);

        // Ambil semua riwayat chat dalam sesi ini
        $history = $session->messages()
            ->orderBy('created_at', 'desc') // ambil yang terbaru dulu
            ->take(10)                      // batasi 10 pesan terakhir
            ->get(['sender', 'message'])
            ->reverse();                     // balik lagi ke urutan semula

        $contents = $history->map(function ($msg) {
            return [
                'role' => $msg->sender === 'user' ? 'user' : 'model',
                'parts' => [['text' => $msg->message]],
            ];
        })->values()->all();

        // Kirim ke Gemini API
        $response = Http::post(
            "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=AIzaSyC9KL5RMMpJMHUh61RfDGQ4GDrlciQiR44",
            ['contents' => $contents]
        );

        $json = $response->json();
        $reply = $json['candidates'][0]['content']['parts'][0]['text'] ?? 'Tidak ada balasan.';

        if (empty($reply)) {
            logger()->warning('Empty AI response', ['response' => $json]);
            $reply = 'Maaf, saya tidak bisa menjawab saat ini.';
        } else {
            $reply = preg_replace([
                '/\*\*(.*?)\*\*/', // bold
                '/\*(.*?)\*/',     // italic
                '/\_(.*?)\_/',     // underscore
                '/\`(.*?)\`/',     // code
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
