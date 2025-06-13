<div id="chatbot-container" style="position: fixed; bottom: 20px; right: 20px; z-index: 9999;">
    <button id="chatbot-toggle" class="p-4 text-white bg-blue-600 rounded-full shadow-lg">
        💬
    </button>

    <div id="chatbot-modal" style="color: black;" class="flex flex-col hidden mt-2 bg-white border rounded-lg shadow-xl w-80 max-h-96">
        <div class="p-2 font-bold bg-gray-100 border-b">
            Asisten Chat
        </div>
        <div class="flex items-center justify-between p-2 bg-gray-100 border-b">
            <select id="chatbot-session" class="flex-1 p-1 mr-2 text-sm border rounded">
                <option value="">Sesi Baru</option>
            </select>
            <button id="new-session" class="text-xs text-blue-600">+ Sesi</button>
        </div>
        <div id="chatbot-messages" class="flex-1 p-2 space-y-2 overflow-y-auto text-sm"></div>
        <div class="p-2 border-t bg-gray-50">
            <input id="chatbot-input" type="text" class="w-full p-2 text-sm border rounded" placeholder="Tulis pesan...">
        </div>
    </div>
</div>

<script>
    const toggleBtn = document.getElementById('chatbot-toggle');
    const modal = document.getElementById('chatbot-modal');
    const input = document.getElementById('chatbot-input');
    const messagesBox = document.getElementById('chatbot-messages');
    let currentSessionId = null;

    toggleBtn.addEventListener('click', () => {
        modal.classList.toggle('hidden');
        if (!modal.classList.contains('hidden')) loadSessions();
    });

    document.getElementById('new-session').addEventListener('click', () => {
        currentSessionId = null;
        messagesBox.innerHTML = '';
        document.getElementById('chatbot-session').value = '';
    });

    document.getElementById('chatbot-session').addEventListener('change', e => {
        currentSessionId = e.target.value || null;
        if (currentSessionId) {
            fetch(`/api/chatbot/messages/${currentSessionId}`)
                .then(res => res.json())
                .then(messages => {
                    messagesBox.innerHTML = '';
                    messages.forEach(m => addMessage(m.message, m.sender));
                });
        } else {
            messagesBox.innerHTML = '';
        }
    });

    input.addEventListener('keydown', e => {
        if (e.key === 'Enter') sendMessage();
    });

    function addMessage(message, sender) {
        const div = document.createElement('div');
        div.className = `p-2 rounded max-w-[75%] ${sender === 'user' ? 'bg-blue-100 self-end' : 'bg-gray-200 self-start'}`;
        div.textContent = message;
        messagesBox.appendChild(div);
        messagesBox.scrollTop = messagesBox.scrollHeight;
    }

    function sendMessage() {
        const text = input.value.trim();
        if (!text) return;
        addMessage(text, 'user');
        input.value = '';

        fetch('/api/chatbot/send', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRF-TOKEN': '{{ csrf_token() }}'
            },
            body: JSON.stringify({
                message: text,
                session_id: currentSessionId
            })
        })
        .then(res => res.json())
        .then(data => {
            addMessage(data.reply, 'bot');
            currentSessionId = data.session_id;
            loadSessions();
            document.getElementById('chatbot-session').value = currentSessionId;
        });
    }

    function loadSessions() {
        fetch('/api/chatbot/sessions')
            .then(res => res.json())
            .then(data => {
                const select = document.getElementById('chatbot-session');
                select.innerHTML = '<option value="">Sesi Baru</option>';
                data.forEach(session => {
                    const opt = document.createElement('option');
                    opt.value = session.id;
                    opt.textContent = session.title;
                    select.appendChild(opt);
                });
            });
    }
</script>
