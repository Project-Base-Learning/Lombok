@extends('layouts.landing-base')

@section('css')
@endsection

@section('content')
    <div class="px-8 py-12 mx-auto lg:px-40 lg:py-20 max-w-screen-3xl">
        <div class="flex items-center justify-between mb-8">
            <h1 class="w-full text-4xl font-semibold text-center">Sorotan</h1>
        </div>

        <div class="flex flex-col gap-8 lg:flex-row">
            <!-- Large Highlight -->
            <div class="relative group rounded-lg shadow-md overflow-hidden lg:w-1/2 max-h-[550px]">
                <a href="#">
                    <img src="https://via.placeholder.com/800x500" alt="Highlight Image"
                        class="object-cover w-full h-full transition-transform duration-300 group-hover:scale-105">
                    <div
                        class="absolute inset-0 flex flex-col items-start justify-end p-4 text-left text-white bg-black bg-opacity-25">
                        <h5 class="mb-2 text-4xl font-bold">Judul Sorotan</h5>
                        <div class="flex w-full mb-2 overflow-hidden flex-nowrap">
                            <span
                                class="bg-red text-white text-xs font-medium me-2 px-2.5 py-0.5 rounded border border-pink-400">Kategori</span>
                        </div>
                        <p class="mt-2 mb-3 text-lg text-justify line-clamp-3 indent-4">Deskripsi singkat sorotan di sini.
                        </p>
                        <p class="text-sm">01/01/2025 By Admin</p>
                    </div>
                </a>
            </div>

            <!-- Three Smaller Highlights -->
            <div class="flex flex-col gap-4 lg:w-1/2">
                @for ($i = 0; $i < 3; $i++)
                    <div class="flex flex-col gap-4 overflow-hidden lg:flex-row h-1/3">
                        <a href="#" class="block w-full h-full lg:w-1/2">
                            <div class="flex-none w-full h-full overflow-hidden rounded-lg group">
                                <img src="https://via.placeholder.com/400x300" alt="Small Card Image"
                                    class="object-cover w-full h-full transition-transform duration-300 group-hover:scale-105">
                            </div>
                        </a>
                        <div class="flex flex-col justify-between w-full">
                            <div>
                                <h5 class="mb-2 text-xl font-semibold">Judul Kecil</h5>
                                <div class="flex w-full mb-2 overflow-hidden flex-nowrap">
                                    <span
                                        class="bg-red text-white text-xs font-medium me-2 px-2.5 py-0.5 rounded border border-pink-400">Kategori</span>
                                </div>
                                <p class="font-semibold text-justify text-gray-600 line-clamp-3 indent-4">Konten singkat
                                    dari sorotan lainnya.</p>
                            </div>
                            <p class="text-sm">01/01/2025 By Admin</p>
                        </div>
                    </div>
                @endfor
            </div>
        </div>
    </div>

    {{-- testimon --}}
    <div class="py-12 px-20 mx-auto">
        <h2 class="text-3xl font-bold text-black mb-8 text-start">Berita Terbaru</h2>
        <div class="overflow-x-auto">
            <div class="flex space-x-6 px-2 pb-4">
                @for ($i = 1; $i <= 5; $i++)
                    <div class="min-w-[300px] bg-white rounded-2xl shadow-md p-6 flex-shrink-0">
                        <!-- Main image -->
                        <img src="{{ asset('storage/images/berita.svg') }}" alt="Card {{ $i }}"
                            class="w-full h-32 object-cover mb-4 rounded-lg">

                        <!-- Publisher Info -->
                        <div class="flex items-center mb-3">
                            <img src="{{ asset('storage/images/fate.jpg') }}" alt="Publisher"
                                class="w-8 h-8 rounded-full mr-3 object-cover">
                            <span class="text-sm font-medium text-gray-700">Nama Publisher</span>
                        </div>

                        <!-- Title -->
                        <h3 class="text-xl font-semibold mb-1">Judul Berita {{ $i }}</h3>

                        <!-- Description -->
                        <p class="text-sm text-gray-600 mb-4">
                            Temukan distributor yang terverifikasi di dekat Anda atau jadilah distributor!
                        </p>
                        <a href="#" class="text-orange-600 hover:text-orange-800">
                            Lihat Berita
                            <i class="fas fa-arrow-right"></i>
                        </a>
                    </div>
                @endfor
            </div>
        </div>
    </div>
@endsection


@section('js')
@endsection
