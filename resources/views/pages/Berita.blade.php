@extends('layouts.landing-base')

@section('css')
@endsection

@section('content')
    <div class="py-12 px-4 lg:px-20 mx-auto">
        <h2 class="text-3xl font-bold text-black mb-8 text-center">Berita Terbaru</h2>

        <div id="multi-card-carousel" class="relative w-full" data-carousel="slide">
            <!-- Carousel wrapper -->
            <div class="relative overflow-hidden rounded-lg h-[500px]">
                @foreach (array_chunk(range(1, 8), 4) as $group)
                    <div class="hidden duration-700 ease-in-out" data-carousel-item>
                        <div class="flex justify-center gap-6 px-4">
                            @foreach ($group as $i)
                                <div class="w-[300px] bg-white rounded-2xl shadow-md p-6 flex-shrink-0">
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
                                        Lihat Berita <i class="fas fa-arrow-right"></i>
                                    </a>
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
                <svg aria-hidden="true" class="w-5 h-5 text-gray-800" fill="none" stroke="currentColor" stroke-width="2"
                    viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M15 19l-7-7 7-7" />
                </svg>
            </button>
            <button type="button"
                class="absolute top-1/2 right-0 z-30 flex items-center justify-center h-10 w-10 -translate-y-1/2 bg-white rounded-full shadow-md hover:bg-gray-100"
                data-carousel-next>
                <svg aria-hidden="true" class="w-5 h-5 text-gray-800" fill="none" stroke="currentColor" stroke-width="2"
                    viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M9 5l7 7-7 7" />
                </svg>
            </button>
        </div>
    </div>

    {{-- publikasi --}}
    <div class="py-12 px-8">
        <h2 class="text-3xl font-bold text-black mb-8">Berita Terbaru</h2>
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 bg-white rounded-2xl">
            <!-- Small Card 1 -->
            <div class="p-6 rounded-lg max-w-[420px]">
                <!-- Main image -->
                <img src="{{ asset('storage/images/berita.svg') }}" alt="Card 1"
                    class="w-[420px] h-[320px] object-cover mb-4 rounded-lg">
                <!-- Publisher Info -->
                <div class="flex items-center mb-3">
                    <img src="{{ asset('storage/images/fate.jpg') }}" alt="Publisher"
                        class="w-8 h-8 rounded-full mr-3 object-cover">
                    <span class="w-2 h-2 bg-orange-600 rounded-full mx-2"></span>
                    <span class="text-sm font-medium text-gray-700">Nama Publisher</span>
                </div>
                <!-- Title -->
                <h3 class="text-xl font-semibold">Judul Berita 1</h3>
                <!-- Description -->
                <p class="mb-4 text-medium">
                    temukan distributor yang terverifikasi di dekat anda atau jadilah distributor!
                </p>
            </div>
            <!-- Small Card 2 -->
            <div class="p-6 rounded-lg max-w-[420px]">
                <!-- Main image -->
                <img src="{{ asset('storage/images/berita.svg') }}" alt="Card 1"
                    class="w-[420px] h-[320px] object-cover mb-4 rounded-lg">
                <!-- Publisher Info -->
                <div class="flex items-center mb-3">
                    <img src="{{ asset('storage/images/fate.jpg') }}" alt="Publisher"
                        class="w-8 h-8 rounded-full mr-3 object-cover">
                    <span class="w-2 h-2 bg-orange-600 rounded-full mx-2"></span>
                    <span class="text-sm font-medium text-gray-700">Nama Publisher</span>
                </div>
                <!-- Title -->
                <h3 class="text-xl font-semibold">Judul Berita 1</h3>
                <!-- Description -->
                <p class="mb-4 text-medium">
                    temukan distributor yang terverifikasi di dekat anda atau jadilah distributor!
                </p>
            </div>
            <!-- Small Card 3 -->
            <div class="p-6 rounded-lg max-w-[420px]">
                <!-- Main image -->
                <img src="{{ asset('storage/images/berita.svg') }}" alt="Card 1"
                    class="w-[420px] h-[320px] object-cover mb-4 rounded-lg">
                <!-- Publisher Info -->
                <div class="flex items-center mb-3">
                    <img src="{{ asset('storage/images/fate.jpg') }}" alt="Publisher"
                        class="w-8 h-8 rounded-full mr-3 object-cover">
                    <span class="w-2 h-2 bg-orange-600 rounded-full mx-2"></span>
                    <span class="text-sm font-medium text-gray-700">Nama Publisher</span>
                </div>
                <!-- Title -->
                <h3 class="text-xl font-semibold">Judul Berita 1</h3>
                <!-- Description -->
                <p class="mb-4 text-medium">
                    temukan distributor yang terverifikasi di dekat anda atau jadilah distributor!
                </p>
            </div>
            <!-- Small Card 4 -->
            <div class="p-6 rounded-lg max-w-[420px]">
                <!-- Main image -->
                <img src="{{ asset('storage/images/berita.svg') }}" alt="Card 1"
                    class="w-[420px] h-[320px] object-cover mb-4 rounded-lg">
                <!-- Publisher Info -->
                <div class="flex items-center mb-3">
                    <img src="{{ asset('storage/images/fate.jpg') }}" alt="Publisher"
                        class="w-8 h-8 rounded-full mr-3 object-cover">
                    <span class="w-2 h-2 bg-orange-600 rounded-full mx-2"></span>
                    <span class="text-sm font-medium text-gray-700">Nama Publisher</span>
                </div>
                <!-- Title -->
                <h3 class="text-xl font-semibold">Judul Berita 1</h3>
                <!-- Description -->
                <p class="mb-4 text-medium">
                    temukan distributor yang terverifikasi di dekat anda atau jadilah distributor!
                </p>
            </div>
        </div>
    </div>
@endsection


@section('js')
@endsection
