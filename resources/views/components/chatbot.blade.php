<!-- resources/views/components/chatbot.blade.php -->
<div x-data="{ open: false }" class="fixed bottom-6 right-6 z-50">
    <div x-show="open" class="w-80 h-96 bg-white shadow-xl rounded-lg overflow-hidden">
        <div class="bg-blue-600 text-white px-4 py-2 font-bold">Chat with Us</div>
        <div class="p-4 h-[calc(100%-48px)] overflow-y-auto">
            <p class="text-sm text-gray-700">Hello! How can we help you today?</p>
            <!-- Add input box or messages here -->
        </div>
    </div>
    <button @click="open = !open" class="bg-blue-600 text-white p-3 rounded-full shadow-lg mt-2">
        <svg class="w-6 h-6" fill="none" stroke="currentColor" stroke-width="2"
            viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round"
                d="M8 10h.01M12 10h.01M16 10h.01M21 16.5A2.5 2.5 0 0118.5 19H7l-4 4V4.5A2.5 2.5 0 015.5 2h13A2.5 2.5 0 0121 4.5v12z" />
        </svg>
    </button>
</div>
