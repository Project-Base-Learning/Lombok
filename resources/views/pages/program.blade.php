@extends('layouts.landing-base')

@section('css')
@endsection

@section('content')
    {{-- highlight --}}
    <div class="flex flex-col w-full gap-8 px-8 py-20 lg:px-20" data-aos="fade-right">
        <h1 class="text-5xl font-semibold text-center">Program Populer</h1>

        <!-- Carousel Wrapper -->
        <div id="default-carousel" class="relative w-full" data-carousel="slide">
            <!-- Carousel container -->
            <div class="relative min-h-[400px] overflow-hidden px-6 sm:px-8 md:px-12">
                @foreach (range(1, 4) as $i)
                    <div class="duration-1000 ease-out {{ $i === 1 ? '' : 'hidden' }}"
                        data-carousel-item="{{ $i === 1 ? 'active' : '' }}">
                        <div class="flex flex-col items-center h-full gap-8 sm:flex-row-reverse mx-[3%]">
                            <div class="flex-1 px-4 md:px-8">
                                <div class="w-full h-full rounded-lg flex items-center justify-center">
                                    <img src="{{ asset('storage/images/berita.svg') }}" alt="Event {{ $i }}"
                                        class="object-contain w-full max-w-[800px] h-auto">
                                </div>
                            </div>
                            <div class="flex-1 px-4 md:px-8">
                                <h2 class="mb-2 text-2xl font-semibold sm:text-4xl">Bauran Kebijakan Nasional
                                    {{ $i }}</h2>
                                <p class="mb-4 text-lg">Temukan distributor yang terverifikasi di dekat anda atau jadilah
                                    distributor!</p>
                                <div class="meta-info mt-2 mb-4 text-sm flex items-center gap-2 text-black">
                                    <span class="flex items-center gap-1">
                                        <i class="fas fa-calendar-alt"></i> 01 Jan 2025
                                    </span>
                                </div>
                                <a href="#"
                                    class="flex items-center justify-between w-56 px-4 py-2 text-white bg-orange-500 rounded-lg shadow-md">
                                    <span class="truncate">Baca selengkapnya</span>
                                    <i class="fas fa-arrow-right w-5 h-5 ml-2"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>

            <!-- Navigation buttons -->
            <button type="button"
                class="absolute top-1/2 left-0 z-30 flex items-center justify-center h-10 w-10 -translate-y-1/2 bg-white rounded-full shadow-md hover:bg-gray-100"
                data-carousel-prev>
                <svg aria-hidden="true" class="w-5 h-5 text-orange-500" fill="none" stroke="currentColor" stroke-width="2"
                    viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M15 19l-7-7 7-7" />
                </svg>
            </button>
            <button type="button"
                class="absolute top-1/2 right-0 z-30 flex items-center justify-center h-10 w-10 -translate-y-1/2 bg-white rounded-full shadow-md hover:bg-gray-100"
                data-carousel-next>
                <svg aria-hidden="true" class="w-5 h-5 text-orange-500" fill="none" stroke="currentColor" stroke-width="2"
                    viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M9 5l7 7-7 7" />
                </svg>
            </button>
        </div>
    </div>
    {{-- Beritas --}}
    <div class="mx-auto max-w-[90%]" data-aos="fade-up">
        <!-- Header + Filter -->
        <div class="relative mb-6 flex flex-col lg:flex-row justify-between items-start lg:items-center gap-4">
            <h2 class="text-5xl font-bold text-center lg:text-left">Semua Program</h2>

            <!-- Filter Dropdown -->
            <div class="w-full lg:w-auto">
                <select
                    class="w-full lg:w-auto border border-gray-300 rounded-lg py-2 px-4 focus:outline-none focus:ring-2 focus:ring-orange-500">
                    <option value="">Filter Kategori</option>
                    <option value="penelitian">Penelitian</option>
                    <option value="pengabdian">Pengabdian</option>
                    <option value="kerjasama">Kerjasama</option>
                </select>
            </div>
        </div>

        <!-- Search Bar -->
        <div class="mb-8">
            <input type="text"
                class="w-full border border-gray-300 rounded-lg py-3 px-4 focus:outline-none focus:ring-2 focus:ring-orange-500"
                placeholder="Cari berita...">
        </div>

        <!-- Cards Grid (8 cards / 2 rows) -->
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4 bg-white rounded-2xl p-4">
            @foreach (range(1, 8) as $i)
                <a href="#"
                    class="block p-4 rounded-lg max-w-[420px] transform transition-transform duration-300 hover:scale-105">
                    <!-- Main image -->
                    <img src="{{ asset('storage/images/berita.svg') }}" alt="Card {{ $i }}"
                        class="w-full h-[240px] object-cover mb-4 rounded-lg">
                    <!-- Publisher Info -->
                    <div class="flex items-center mb-3">
                        <img src="{{ asset('storage/images/fate.jpg') }}" alt="Publisher"
                            class="w-8 h-8 rounded-full mr-3 object-cover">
                        <span class="text-md font-semibold">Wildan Ganteng</span>
                        <span class="w-2 h-2 bg-orange-600 rounded-full mx-2"></span>
                        <span class="text-md font-semibold">Penelitian</span>
                    </div>
                    <!-- Title -->
                    <h3 class="text-2xl font-semibold">Judul Berita {{ $i }}</h3>
                    <!-- Description -->
                    <p class="mb-4 font-reguler text-md">
                        temukan distributor yang terverifikasi di dekat anda atau jadilah distributor!
                    </p>
                </a>
            @endforeach
        </div>
        <!-- Pagination Info & Controls -->
        <div class="mx-auto mt-2 mb-8 flex flex-col md:flex-row justify-between items-center">
            <!-- Left side: result count -->
            <div class="text-gray-600 text-sm mb-4 md:mb-0">
                Showing <span class="font-semibold">1</span> to <span class="font-semibold">18</span> of <span
                    class="font-semibold">80</span> results
            </div>

            <!-- Right side: page controls -->
            <nav class="inline-flex items-center space-x-1">
                <!-- Previous Arrow -->
                <button class="w-8 h-8 flex items-center justify-center rounded-full bg-gray-200 hover:bg-gray-300 text-sm">
                    <i class="fas fa-chevron-left text-gray-700 text-xs"></i>
                </button>

                <!-- Page Numbers -->
                @foreach (range(1, 5) as $page)
                    <button
                        class="w-8 h-8 flex items-center justify-center rounded-full {{ $page == 1 ? 'bg-orange-500 text-white' : 'bg-orange-100 text-orange-500 hover:bg-orange-200' }} text-sm font-semibold">
                        {{ $page }}
                    </button>
                @endforeach

                <!-- Next Arrow -->
                <button class="w-8 h-8 flex items-center justify-center rounded-full bg-gray-200 hover:bg-gray-300 text-sm">
                    <i class="fas fa-chevron-right text-gray-700 text-xs"></i>
                </button>
            </nav>
        </div>
    </div>
@endsection


@section('js')
@endsection
