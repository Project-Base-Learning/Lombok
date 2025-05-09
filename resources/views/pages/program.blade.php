@extends('layouts.landing-base')

@section('css')
@endsection

@section('content')
<div class="flex flex-col w-full gap-8 px-8 py-20 lg:px-20">
    <h1 class="text-4xl font-semibold text-center">Event Mendatang</h1>

    <!-- Carousel Wrapper -->
    <div id="default-carousel" class="relative w-full" data-carousel="slide">

        <!-- Carousel container -->
        <div class="relative min-h-[400px] overflow-hidden px-6 sm:px-8 md:px-12">
            <!-- Example slide (empty content) -->
            <div class="duration-1000 ease-out" data-carousel-item>
                <div class="flex flex-col items-center h-full gap-8 sm:flex-row-reverse mx-[3%]">
                    <!-- Image Section (placeholder) -->
                    <div class="flex-1 px-4 md:px-8">
                        <div class="w-full h-[300px] bg-gray-200 rounded-lg flex items-center justify-center">
                            <span class="text-gray-500">No Image</span>
                        </div>
                    </div>

                    <!-- Text Section (placeholder) -->
                    <div class="flex-1 px-4 md:px-8">
                        <h2 class="mb-2 text-2xl font-semibold sm:text-4xl text-gray-400">Judul Event</h2>
                        <p class="mb-4 text-lg text-gray-400">Deskripsi event akan muncul di sini.</p>
                        <ul class="flex items-center gap-2 mb-4">
                            <img src="image/calendar.svg" alt="Calendar Icon" class="w-6 h-6">
                            <p class="text-lg font-semibold text-gray-400">Tanggal Event</p>
                        </ul>
                        <a href="#"
                            class="flex items-center justify-between w-56 px-4 py-2 text-white bg-red rounded-lg shadow-md opacity-50 cursor-not-allowed">
                            <span class="truncate">Baca selengkapnya</span>
                            <img src="{{ asset('image/arrowalt-right-white.svg') }}" alt="Arrow Right"
                                class="w-5 h-5">
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Carousel indicators (optional, static) -->
        <div class="absolute z-[100] flex space-x-3 -translate-x-1/2 bottom-5 left-1/2">
            <button class="w-3 h-3 bg-gray-300 rounded-full" aria-label="Slide 1"></button>
            <button class="w-3 h-3 bg-gray-300 rounded-full" aria-label="Slide 2"></button>
            <button class="w-3 h-3 bg-gray-300 rounded-full" aria-label="Slide 3"></button>
        </div>

        <!-- Carousel controls -->
        <button type="button"
            class="absolute top-0 left-0 z-40 flex items-center justify-center h-full px-4 cursor-pointer group"
            data-carousel-prev>
            <span
                class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-gray-800/30 group-hover:bg-gray-800/60">
                <svg class="w-4 h-4 text-white" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        d="M5 1 1 5l4 4" />
                </svg>
            </span>
        </button>
        <button type="button"
            class="absolute top-0 right-0 z-40 flex items-center justify-center h-full px-4 cursor-pointer group"
            data-carousel-next>
            <span
                class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-gray-800/30 group-hover:bg-gray-800/60">
                <svg class="w-4 h-4 text-white" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        d="m1 9 4-4-4-4" />
                </svg>
            </span>
        </button>
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
