<div class="lg:!px-40 lg:!py-12 md:!px-20 md:!py-12 px-8 py-6">
    <div class="grid grid-cols-1 gap-16 mx-auto max-w-7xl md:grid-cols-2">
        <!-- Left Side: Contact Form -->
        <div class="p-8" data-aos="fade-right">
            <!-- Contact Us Title -->
            <h2 class="mb-4 text-4xl font-semibold tracking-wider text-gray-800 md:text-5xl lg:text-6xl">Contact Us</h2>
            <p class="mb-6 text-gray-800">Tanyakan hal yang ingin Anda ketahui tentang kami pada kolom di bawah ini!</p>
            <!-- Form -->
            <form action="{{ route('mail') }}" method="POST" class="space-y-6">
                @csrf
                <!-- Email Field -->
                <div>
                    <input type="email" id="email" name="email" required
                        class="w-full p-2 placeholder-gray-500 border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500"
                        placeholder="Email Anda *">
                </div>

                <!-- Subject Field -->
                <div>
                    <input type="text" id="subject" name="subject" required
                        class="w-full p-2 placeholder-gray-500 border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500"
                        placeholder="Subject *">
                </div>

                <!-- Message Field -->
                <div>
                    <textarea id="message" name="message" required rows="6"
                        class="w-full p-2 placeholder-gray-500 border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500"
                        placeholder="Tulis pesan Anda di sini *"></textarea>
                </div>

                <!-- Submit Button -->
                <div>
                    <button type="submit"
                        class="flex items-center justify-center w-full gap-2 px-4 py-2 font-medium text-black transition border-2 rounded-lg bg-secondary-200 hover:border-secondary-500">
                        Kirim Pesan
                    </button>
                </div>
            </form>
        </div>
        <!-- Right Side: Image -->
        <div class="items-center justify-center hidden md:flex" data-aos="fade-left">
            <img src="{{ asset("image/home/shape.png") }}" alt="Contact Us Image" class="w-full max-w-lg drop-shadow-md">
        </div>
    </div>
</div>
