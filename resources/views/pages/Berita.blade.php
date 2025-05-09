@extends('layouts.landing-base')

@section('css')
@endsection

@section('content')
    {{-- card acousel --}}
    <div class="py-12 px-4 lg:px-20 mx-auto" data-aos="fade-right">
        <h2 class="text-5xl font-bold text-black mb-8 text-center">Berita Terbaru</h2>

        <div id="multi-card-carousel" class="relative w-full" data-carousel="slide">
            <!-- Carousel wrapper -->
            <div class="relative overflow-hidden rounded-lg h-[500px]">
                @foreach (array_chunk(range(1, 8), 4) as $group)
                    <div class="hidden duration-700 ease-in-out" data-carousel-item>
                        <div class="flex justify-center gap-6 px-4">
                            @foreach ($group as $i)
                                <div
                                    class="w-[400px] h-[460px] relative rounded shadow-md overflow-hidden flex-shrink-0 group">
                                    <!-- Clickable Link Overlay -->
                                    <a href="#" class="absolute inset-0 z-20"></a>
                                    <!-- Full image -->
                                    <img src="{{ asset('storage/images/berita.svg') }}" alt="Card {{ $i }}"
                                        class="absolute inset-0 w-full h-full object-cover">
                                    <!-- Overlay content -->
                                    <div
                                        class="relative z-10 p-4 h-full bg-gradient-to-t from-black/70 via-black/35 to-transparent text-white flex flex-col justify-end">
                                        <!-- Title -->
                                        <h3 class="text-3xl font-semibold mb-1">Laporan data keuangan
                                            SKPD 202{{ $i }}</h3>
                                        <!-- Description -->
                                        <p class="text-md mb-2">
                                            Temukan distributor yang terverifikasi di dekat Anda atau jadilah distributor!
                                        </p>
                                        <div class="meta-info text-base flex items-center gap-3 text-white">
                                            <span class="flex items-center gap-2">
                                                <i class="fas fa-eye text-lg"></i>
                                                <span class="text-base">123</span>
                                            </span>
                                            <span class="w-2 h-2 bg-orange-600 rounded-full"></span>
                                            <span class="flex items-center gap-2">
                                                <i class="fas fa-calendar-alt text-lg"></i>
                                                <span class="text-base">01 Jan 2025</span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
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
            <h2 class="text-5xl font-bold text-center lg:text-left">Semua Berita</h2>

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
