@extends('tests.landing-base')

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
                                <div class="flex items-center justify-center w-full h-full rounded-lg">
                                    <img src="{{ asset('storage/images/berita.svg') }}" alt="Event {{ $i }}"
                                        class="object-contain w-full max-w-[800px] h-auto">
                                </div>
                            </div>
                            <div class="flex-1 px-4 md:px-8">
                                <h2 class="mb-2 text-3xl font-semibold sm:text-4xl">Bauran Kebijakan Nasional
                                    {{ $i }}</h2>
                                <p class="mb-4 text-xl">Temukan distributor yang terverifikasi di dekat anda atau jadilah
                                    distributor!</p>
                                    <div class="flex items-center gap-2 mt-2 mb-4 text-lg text-black meta-info">
                                        <span class="flex items-center gap-2">
                                            <i class="text-xl font-semibold fas fa-calendar-alt"></i>
                                            <span>01 Jan 2025</span>
                                        </span>
                                    </div>
                                <a href="#"
                                class="flex items-center w-56 px-4 py-2 text-white transition duration-300 transform bg-orange-500 rounded-lg shadow-md hover:scale-105">
                                 <span class="text-lg font-semibold truncate">Baca selengkapnya</span>
                                 <i class="ml-2 text-lg fas fa-arrow-right"></i>
                             </a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>

            <!-- Navigation buttons -->
            <button type="button"
                class="absolute left-0 z-30 flex items-center justify-center w-10 h-10 -translate-y-1/2 bg-white rounded-full shadow-md top-1/2 hover:bg-gray-100"
                data-carousel-prev>
                <svg aria-hidden="true" class="w-5 h-5 text-orange-500" fill="none" stroke="currentColor" stroke-width="2"
                    viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M15 19l-7-7 7-7" />
                </svg>
            </button>
            <button type="button"
                class="absolute right-0 z-30 flex items-center justify-center w-10 h-10 -translate-y-1/2 bg-white rounded-full shadow-md top-1/2 hover:bg-gray-100"
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
        <div class="relative flex flex-col items-start justify-between gap-4 mb-6 lg:flex-row lg:items-center">
            <h2 class="text-4xl font-bold text-center lg:text-left">Semua Program</h2>

            <!-- Filter Dropdown -->
            <div class="w-full lg:w-auto">
                <select
                    class="w-full px-4 py-2 border border-gray-300 rounded-lg lg:w-auto focus:outline-none focus:ring-2 focus:ring-orange-500">
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
                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-orange-500"
                placeholder="Cari berita...">
        </div>

        <!-- Cards Grid (8 cards / 2 rows) -->
        <div class="grid grid-cols-1 gap-4 p-4 bg-white sm:grid-cols-2 lg:grid-cols-4 rounded-2xl">
            @foreach (range(1, 8) as $i)
                <a href="#"
                    class="block p-4 rounded-lg max-w-[420px] transform transition-transform duration-300 hover:scale-105">
                    <!-- Main image -->
                    <img src="{{ asset('storage/images/berita.svg') }}" alt="Card {{ $i }}"
                        class="w-full h-[240px] object-cover mb-4 rounded-lg">
                    <!-- Publisher Info -->
                    <div class="flex items-center mb-3">
                        <img src="{{ asset('storage/images/fate.jpg') }}" alt="Publisher"
                            class="object-cover w-8 h-8 mr-3 rounded-full">
                        <span class="font-semibold text-md">Wildan Ganteng</span>
                        <span class="w-2 h-2 mx-2 bg-orange-600 rounded-full"></span>
                        <span class="font-semibold text-md">Penelitian</span>
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
        <div class="flex flex-col items-center justify-between mx-auto mt-2 mb-8 md:flex-row">
            <!-- Left side: result count -->
            <div class="mb-4 text-sm text-gray-600 md:mb-0">
                Showing <span class="font-semibold">1</span> to <span class="font-semibold">18</span> of <span
                    class="font-semibold">80</span> results
            </div>

            <!-- Right side: page controls -->
            <nav class="inline-flex items-center space-x-1">
                <!-- Previous Arrow -->
                <button class="flex items-center justify-center w-8 h-8 text-sm bg-gray-200 rounded-full hover:bg-gray-300">
                    <i class="text-xs text-gray-700 fas fa-chevron-left"></i>
                </button>

                <!-- Page Numbers -->
                @foreach (range(1, 5) as $page)
                    <button
                        class="w-8 h-8 flex items-center justify-center rounded-full {{ $page == 1 ? 'bg-orange-500 text-white' : 'bg-orange-100 text-orange-500 hover:bg-orange-200' }} text-sm font-semibold">
                        {{ $page }}
                    </button>
                @endforeach

                <!-- Next Arrow -->
                <button class="flex items-center justify-center w-8 h-8 text-sm bg-gray-200 rounded-full hover:bg-gray-300">
                    <i class="text-xs text-gray-700 fas fa-chevron-right"></i>
                </button>
            </nav>
        </div>
    </div>
@endsection


@section('js')
@endsection
