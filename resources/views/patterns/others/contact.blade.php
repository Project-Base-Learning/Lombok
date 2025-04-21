<script src="https://unpkg.com/slim-select@latest/dist/slimselect.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<link href="https://unpkg.com/slim-select@latest/dist/slimselect.css" rel="stylesheet" />
<style>
    input:focus + label,
    input:not(:placeholder-shown) + label {
        font-size: 0.875rem;
    }
</style>

<div class="px-8 py-20">
    <div class="grid grid-cols-1 gap-16 mx-auto max-w-7xl md:grid-cols-2">
        <!-- Left Side: Contact Form -->
        <div class="p-8" data-aos="fade-right">
            <!-- Contact Us Title -->
            <h2 class="mb-4 text-4xl font-semibold tracking-wider text-gray-800 md:text-5xl lg:text-6xl">Contact Us</h2>
            <p class="mb-6 text-gray-800">Tanyakan hal yang ingin Anda ketahui tentang kami pada kolom di bawah ini!</p>
            <!-- Form -->
            <form action="#" method="POST" class="space-y-6">
                <!-- Email Field -->
                <div>
                    <input type="email" id="email" name="email" required
                        class="w-full p-2 placeholder-gray-500 border border-gray-300 rounded-lg focus:ring-red focus:border-red"
                        placeholder="Email Anda *">
                </div>

                <!-- Name Field -->
                <div>
                    <input type="text" id="name" name="name"
                        class="w-full p-2 placeholder-gray-500 border border-gray-300 rounded-lg focus:ring-red focus:border-red"
                        placeholder="Nama Anda (opsional)">
                </div>

                <!-- Message Field -->
                <div>
                    <textarea id="message" name="message" required rows="6"
                        class="w-full p-2 placeholder-gray-500 border border-gray-300 rounded-lg focus:ring-red focus:border-red"
                        placeholder="Tulis pesan Anda di sini *"></textarea>
                </div>

                <!-- Submit Button -->
                <div>
                    <button type="submit"
                        class="w-full text-red border-1 border-red font-medium py-2 px-4 rounded-lg flex items-center justify-center gap-2 hover:bg-[#F32055]/10 transition focus:ring-2 focus:ring-[#F32055]">
                        Kirim Pesan
                        <!-- Arrow SVG -->
                        <span>
                            <img src="{{ asset("image/arrow-right.svg") }}" alt="">
                        </span>
                    </button>
                </div>
            </form>
        </div>
        <!-- Right Side: Image -->
        <div class="items-center justify-center hidden md:flex" data-aos="fade-left">
            <img src="{{ asset("image/about/shape.svg") }}" alt="Contact Us Image" class="w-full max-w-lg drop-shadow-md">
        </div>
    </div>
</div>
