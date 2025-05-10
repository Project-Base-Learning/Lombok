@extends('tests.landing-base')

@section('css')
@endsection

@section('content')
    <div class="px-8 py-12 mx-auto lg:px-40 lg:py-20 max-w-[100%]" data-aos="fade-right">
        <div class="flex items-center justify-between mb-8">
            <h1 class="w-full text-5xl font-semibold text-center">Publikasi Populer</h1>
        </div>
        <div class="flex flex-col gap-8 lg:flex-row">
            <!-- Large Highlight -->
            <div class="relative group rounded shadow-md overflow-hidden max-w-[600px] max-h-[800px] md:w-1/2">
                <a href="#">
                    <img src="{{ asset('storage/images/berita.svg') }}" alt="Highlight Image"
                        class="object-cover w-full h-full transition-transform duration-300 group-hover:scale-105">
                    <div
                        class="absolute inset-0 flex flex-col items-start justify-end p-4 mx-auto text-left text-white bg-black bg-opacity-25">
                        <h5 class="mb-2 text-4xl font-bold">Laporan data keuangan
                            SKPD 2024</h5>
                        <p class="mt-2 mb-3 text-lg text-justify line-clamp-3">temukan distributor yang terverifikasi di
                            dekat anda atau jadilah distributor! temukan yang di dekat anda atau jadilah distributor!
                        </p>
                        <div class="flex items-center gap-3 text-base text-white meta-info">
                            <span class="flex items-center gap-2">
                                <i class="text-lg fas fa-eye"></i>
                                <span class="text-base">123</span>
                            </span>
                            <span class="w-2 h-2 bg-orange-600 rounded-full"></span>
                            <span class="flex items-center gap-2">
                                <i class="text-lg fas fa-calendar-alt"></i>
                                <span class="text-base">01 Jan 2025</span>
                            </span>
                        </div>
                    </div>
                </a>
            </div>
            <!-- Three Smaller Highlights -->
            <div class="flex flex-col gap-6">
                @for ($i = 0; $i < 3; $i++)
                    <div class="flex flex-col gap-4 overflow-hidden lg:flex-row max-w-[800px]">
                        <a href="#" class="block w-full h-[250px] md:w-1/2 md:h-[200px]">
                            <div class="flex-none w-full h-full overflow-hidden rounded-lg group">
                                <img src="{{ asset('storage/images/berita.svg') }}" alt="Small Card Image"
                                    class="object-cover w-full h-full transition-transform duration-300 group-hover:scale-105">
                            </div>
                        </a>
                        <div class="flex flex-col justify-between w-full">
                                <h5 class="mb-2 text-2xl font-semibold">Laporan data keuangan SKPD 2024</h5>
                                <p class="text-lg font-semibold text-justify text-gray-600">Temukan
                                    distributor yang terverifikasi di dekat anda atau jadilah distributor! Temukan yang di
                                    dekat anda atau jadilah distributor!</p>
                            <div class="flex items-center gap-3 text-base text-black meta-info">
                                <span class="flex items-center gap-2">
                                    <i class="text-lg fas fa-eye"></i>
                                    <span class="text-base">123</span>
                                </span>
                                <span class="w-2 h-2 bg-orange-600 rounded-full"></span>
                                <span class="flex items-center gap-2">
                                    <i class="text-lg fas fa-calendar-alt"></i>
                                    <span class="text-base">01 Jan 2025</span>
                                </span>
                            </div>
                        </div>
                    </div>
                @endfor
            </div>
        </div>
    </div>
    {{-- Beritas --}}
    <div class="mx-auto max-w-[90%]" data-aos="fade-up">
        <!-- Header + Filter -->
        <div class="relative flex flex-col items-start justify-between gap-4 mb-6 lg:flex-row lg:items-center">
            <h2 class="text-4xl font-bold text-center lg:text-left">Semua Publikasi</h2>

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
