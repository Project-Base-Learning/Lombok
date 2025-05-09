@extends('layouts.landing-base')

@section('css')
    <style>
        input:focus+label,
        input:not(:placeholder-shown)+label {
            font-size: 0.875rem;
        }
    </style>
@endsection

@section('content')
    <div class="px-8 py-20">
        <div class="grid grid-cols-1 gap-16 mx-auto max-w-7xl md:grid-cols-2">
            <!-- Left Side: Contact Form -->
            <div class="p-8" data-aos="fade-right">
                <!-- Contact Us Title -->
                <p class="mb-6 text-gray-800">
                    <span class="text-xl text-orange-500">*</span> Tanyakan hal yang ingin Anda ketahui tentang kami pada kolom di
                    bawah ini!
                </p>
                <!-- Form -->
                <form action="#" method="POST" class="space-y-6">
                    <!-- Email Field -->
                    <div>
                        <input type="email" id="email" name="email" required
                            class="w-full p-2 placeholder-gray-500 border border-gray-300 rounded-lg focus:ring-orange-500 focus:border-orange-500"
                            placeholder="Email Anda *">
                    </div>

                    <!-- Name Field -->
                    <div>
                        <input type="text" id="name" name="name"
                            class="w-full p-2 placeholder-gray-500 border border-gray-300 rounded-lg focus:ring-orange-500 focus:border-orange-500"
                            placeholder="Nama Anda (opsional)">
                    </div>

                    <!-- notelp Field -->
                    <div>
                        <input type="text" id="notelp" notelp="notelp"
                            class="w-full p-2 placeholder-gray-500 border border-gray-300 rounded-lg focus:ring-orange-500 focus:border-orange-500"
                            placeholder="Nomor Telepon (opsional)">
                    </div>

                    <!-- Message Field -->
                    <div>
                        <textarea id="message" name="message" required rows="6"
                            class="w-full p-2 placeholder-gray-500 border border-gray-300 rounded-lg focus:ring-orange-500 focus:border-orange-500"
                            placeholder="Tulis pesan Anda di sini *"></textarea>
                    </div>

                    <!-- Submit Button -->
                    <div>
                        <button type="submit"
                            class="w-full text-orange-500 border border-orange-500 font-medium py-2 px-4 rounded-lg flex items-center justify-center gap-2 hover:bg-orange-100 transition focus:ring-2 focus:ring-orange-500">
                            Kirim Pesan
                            <!-- Font Awesome Arrow Icon -->
                            <i class="fas fa-arrow-right"></i>
                        </button>
                    </div>

                </form>
            </div>
            <!-- Right Side: Image and Contact Info -->
            <div class="flex flex-col items-start justify-center gap-6 text-center lg:text-left" data-aos="fade-left">
                <h2 class="mb-4 text-6xl font-semibold tracking-wider text-gray-800">Contact Us</h2>
                <img src="{{ asset('storage/images/telp.svg') }}" alt="Contact Us Image"
                    class="w-full max-w-lg drop-shadow-md">

                <div class="meta-info text-base flex flex-col gap-3 text-black">
                    <div class="flex items-center gap-2 justify-center lg:justify-start">
                        <i class="fas fa-phone text-orange-500 text-lg"></i>
                        <span class="text-base">(+62) 851 2873 01213</span>
                    </div>
                    <div class="flex items-center gap-2 justify-center lg:justify-start">
                        <i class="fas fa-envelope text-orange-500 text-lg"></i>
                        <span class="text-base">Wildanganteng@gmail.com</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection


@section('js')
@endsection
