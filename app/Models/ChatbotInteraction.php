<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ChatbotInteraction extends Model
{
    protected $table = 'chatbot_interaction';

    protected $guarded = [];
}

// class ChatbotController extends Controller
// {
//     public function index()
//     {
//         $messages = session()->get('chat_messages', []);
//         return view('chatbot', compact('messages'));
//     }

//     public function ask(Request $request)
//     {
//         $request->validate(['question' => 'required|string']);
//         $messages = session()->get('chat_messages', []);

//         $conversation = [];
//         foreach ($messages as $message) {
//             $conversation[] = new UserMessage($message['question']);
//             $conversation[] = new AssistantMessage($message['answer']);
//         }

//         $conversation[] = new UserMessage($request->question);

//         $response = Prism::text()
//             ->using(Provider::Groq, 'gemma2-9b-it')
//             ->withSystemPrompt("
//                 Kamu adalah asisten AI untuk situs web resmi informasi wisata daerah 'Pantai Indah Bali'.
//                 Jawablah pertanyaan hanya seputar fitur dan konten website ini.
//             ")
//             ->withMessages($conversation)
//             ->asText();

//         $parsedown = new Parsedown();
//         $answer = $parsedown->text($response->text);

//         $messages[] = [
//             'question' => $request->question,
//             'answer' => $answer,
//         ];

//         session()->put('chat_messages', $messages);

//         return redirect('/chatbot');
//     }
// }

// class Chatbot extends Component
// {
//     public $messages = [];

//     public $question;

//     public function mount()
//     {
//         $this->messages = ChatInteraction::all();
//     }

//     public function askQuestion()
//     {
//         $conversation = [];

//         foreach ($this->messages as $message) {
//             $conversation[] = new UserMessage($message->question);
//             $conversation[] = new AssistantMessage($message->answer);
//         }

//         $conversation[] = new UserMessage($this->question);

//         $response = Prism::text()
//             ->using(Provider::Groq, 'gemma2-9b-it')
//             ->withSystemPrompt("
//                 Kamu adalah asisten AI untuk situs web resmi informasi wisata daerah 'Pantai Indah Bali'.
//                 Tugasmu adalah menjawab pertanyaan pengunjung seputar:
//                 - Informasi wisata, sejarah, dan fasilitas di Pantai Indah Bali
//                 - Artikel yang ada di website ini
//                 - Fitur-fitur di website ini (peta interaktif, galeri foto, jadwal event, dsb)
//                 Jangan menjawab pertanyaan di luar topik tersebut. Jika tidak relevan, tolak dengan sopan.
//                 Jawabanmu harus sopan, singkat, dan jelas.
//             ")
//             ->withMessages($conversation)
//             ->asText();

//         $parsedown = new Parsedown();
//         $this->answer = $parsedown->text($response->text);

//         $interaction = ChatInteraction::create([
//             'question' => $this->question,
//             'answer' => $this->answer,
//             'user_id' => auth()->id(),
//         ]);

//         $this->messages->push($interaction);
//         $this->question = '';
//     }

//     public function render()
//     {
//         return view('livewire.chatbot');
//     }
// }
