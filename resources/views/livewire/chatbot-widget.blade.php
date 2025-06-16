<div>
    <div id="chatbot-container" style="position: fixed; bottom: 20px; right: 20px; z-index: 9999;">
        <button id="chatbot-toggle"
            style="padding: 1rem; color: white; background-color: #2563eb; border-radius: 9999px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); border: none;">
            💬
        </button>

        <div id="chatbot-modal" role="dialog" aria-modal="true" aria-labelledby="chatbot-title"
            style="display: none; flex-direction: column; margin-top: 0.5rem; background-color: white; border: 1px solid #ccc; border-radius: 0.5rem; box-shadow: 0 6px 12px rgba(0,0,0,0.15); width: 28rem; max-height: 32rem; color: black; overflow: hidden;">


            <div id="chatbot-title"
                style="padding: 0.5rem; font-weight: bold; background-color: #f3f4f6; border-bottom: 1px solid #ccc;">
                Asisten Chat
            </div>

            <div
                style="display: flex; flex-direction: column; gap: 0.25rem; padding: 0.5rem; background-color: #f3f4f6; border-bottom: 1px solid #ccc;">
                <select id="chatbot-session"
                    style="width: 100%; padding: 0.5rem; font-size: 0.875rem; border: 1px solid #ccc; border-radius: 0.25rem; background-color: white; color: black;">
                    <option value="">Sesi Baru</option>
                </select>
                <button id="new-session"
                    style="font-size: 0.75rem; color: #2563eb; background: none; border: none; cursor: pointer; align-self: flex-end;">
                    + Sesi
                </button>
            </div>


            <div id="chatbot-messages"
                style="flex: 1; padding: 0.5rem; overflow-y: auto; font-size: 0.875rem; display: flex; flex-direction: column; gap: 0.5rem;">
            </div>

            <div style="padding: 0.5rem; border-top: 1px solid #ccc; background-color: #f9fafb;">
                <div style="display: flex; gap: 0.5rem;">
                    <input id="chatbot-input" type="text"
                        style="flex: 1; padding: 0.5rem; font-size: 0.875rem; border: 1px solid #ccc; border-radius: 0.25rem; background-color: white; color: black;"
                        placeholder="Tulis pesan...">
                    <button id="chatbot-send"
                        style="padding: 0.5rem; background-color: #2563eb; border: none; border-radius: 0.25rem; cursor: pointer; display: flex; align-items: center; justify-content: center;">
                        <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="white"
                            viewBox="0 0 24 24">
                            <path d="M2.01 21l20.99-9L2.01 3 2 10l15 2-15 2z" />
                        </svg>
                    </button>

                </div>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const toggleBtn = document.getElementById('chatbot-toggle');
            const modal = document.getElementById('chatbot-modal');
            const input = document.getElementById('chatbot-input');
            const messagesBox = document.getElementById('chatbot-messages');
            const sessionSelect = document.getElementById('chatbot-session');
            let currentSessionId = null;
            document.getElementById('chatbot-send').addEventListener('click', sendMessage);

            toggleBtn.addEventListener('click', () => {
                const isHidden = modal.style.display === 'none' || modal.style.display === '';
                modal.style.display = isHidden ? 'flex' : 'none';
                if (isHidden) {
                    loadSessions();
                    setTimeout(() => input.focus(), 100);
                }
            });

            document.getElementById('new-session').addEventListener('click', () => {
                currentSessionId = null;
                messagesBox.innerHTML = '';
                sessionSelect.value = '';
            });

            sessionSelect.addEventListener('change', e => {
                currentSessionId = e.target.value || null;
                if (currentSessionId) {
                    fetch(`/api/chatbot/messages/${currentSessionId}`)
                        .then(res => res.json())
                        .then(messages => {
                            messagesBox.innerHTML = '';
                            messages.forEach(m => addMessage(m.message, m.sender, m.created_at));
                        })
                        .catch(() => addMessage("Gagal memuat pesan.", "bot"));
                } else {
                    messagesBox.innerHTML = '';
                }
            });

            input.addEventListener('keydown', e => {
                if (e.key === 'Enter') sendMessage();
            });

            function addMessage(message, sender, time = null) {
                const div = document.createElement('div');
                const timestamp = time ? new Date(time).toLocaleTimeString() : new Date().toLocaleTimeString();

                const textDiv = document.createElement('div');
                textDiv.textContent = message;

                const timeDiv = document.createElement('div');
                timeDiv.textContent = timestamp;
                timeDiv.style.fontSize = '10px';
                timeDiv.style.fontStyle = 'italic';
                timeDiv.style.color = '#6b7280';
                timeDiv.style.marginTop = '0.25rem';
                timeDiv.style.textAlign = 'right';

                div.style.padding = '0.5rem';
                div.style.borderRadius = '0.5rem';
                div.style.maxWidth = '75%';
                div.style.wordBreak = 'break-word';
                div.style.alignSelf = sender === 'user' ? 'flex-end' : 'flex-start';
                div.style.backgroundColor = sender === 'user' ? '#dbeafe' : '#e5e7eb';

                div.appendChild(textDiv);
                div.appendChild(timeDiv);
                messagesBox.appendChild(div);
                div.scrollIntoView({
                    behavior: 'smooth',
                    block: 'end'
                });
            }

            function showTypingIndicator() {
                const typing = document.createElement('div');
                typing.id = 'typing-indicator';
                typing.textContent = 'Bot sedang mengetik...';
                typing.style.fontSize = '0.875rem';
                typing.style.fontStyle = 'italic';
                typing.style.color = '#9ca3af';
                messagesBox.appendChild(typing);
                typing.scrollIntoView({
                    behavior: 'smooth',
                    block: 'end'
                });
            }

            function removeTypingIndicator() {
                const typing = document.getElementById('typing-indicator');
                if (typing) typing.remove();
            }

            function sendMessage() {
                const text = input.value.trim();
                if (!text) return;

                input.disabled = true;
                addMessage(text, 'user');
                input.value = '';
                showTypingIndicator();

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
                        removeTypingIndicator();
                        addMessage(data.reply, 'bot');
                        currentSessionId = data.session_id;
                        loadSessions();
                        sessionSelect.value = currentSessionId;
                    })
                    .catch(() => {
                        removeTypingIndicator();
                        addMessage("Terjadi kesalahan saat mengirim pesan.", "bot");
                    })
                    .finally(() => {
                        input.disabled = false;
                        input.focus();
                    });
            }

            function loadSessions() {
                fetch('/api/chatbot/sessions')
                    .then(res => res.json())
                    .then(data => {
                        sessionSelect.innerHTML = '<option value="">Sesi Baru</option>';
                        data.forEach(session => {
                            const opt = document.createElement('option');
                            opt.value = session.id;
                            opt.textContent = session.title;
                            sessionSelect.appendChild(opt);
                        });
                    })
                    .catch(() => {
                        addMessage("Gagal memuat sesi.", "bot");
                    });
            }
        });
    </script>
</div>
