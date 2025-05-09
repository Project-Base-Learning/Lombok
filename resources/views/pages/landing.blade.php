@extends('layouts.landing-base')
{{-- <x-chatbot /> --}}

@section('css')
    <style>
        .snip1369 {
            position: relative;
            overflow: hidden;
            margin: 10px;
            min-width: 260px;
            max-width: 380px;
            width: 100%;
            background: #20638f;
            text-align: left;
            color: #ffffff;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
            font-size: 16px;
        }

        .snip1369 * {
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            -webkit-transition: all 0.3s ease-out;
            transition: all 0.3s ease-out;
        }

        .snip1369>img,
        .snip1369 .image img {
            -webkit-transform: scale(1.05);
            transform: scale(1.05);
            max-width: 100%;
        }

        .snip1369>img {
            vertical-align: top;
            position: relative;
            -webkit-filter: blur(5px);
            filter: blur(5px);
            opacity: 0.6;
        }

        .snip1369 figcaption,
        .snip1369 .image {
            -webkit-transition-delay: 0.2s;
            transition-delay: 0.2s;
        }

        .snip1369 .image {
            position: absolute;
            top: 0;
            bottom: 25%;
            right: 0;
            left: 0;
            overflow: hidden;
            box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.1), 0px 1px 0 rgba(255, 255, 255, 0.2);
        }

        .snip1369 .image img {
            position: absolute;
            top: 0;
        }

        .snip1369 figcaption {
            position: absolute;
            top: 75%;
            bottom: 46px;
            left: 20px;
            right: 20px;
            border-bottom: 2px solid #ffffff;
            padding-top: 24px;
            z-index: 1;
        }

        /* Medium screen (md: <1024px) */
        @media (max-width: 1366px) {
            .snip1369 figcaption {
                padding-top: 8px;
            }
        }

        /* Small screen (sm: <768px) */
        @media (max-width: 767px) {
            .snip1369 figcaption {
                padding-top: 4px;
            }
        }

        .snip1369 p {
            letter-spacing: 1px;
            opacity: 0;
        }

        .snip1369 .read-more {
            display: block;
            opacity: 0;
            -webkit-transform: translateX(-20px);
            transform: translateX(-20px);
            line-height: 48px;
            text-transform: uppercase;
            letter-spacing: 1px;
            padding: 0 20px;
            color: #ffffff;
            right: 0;
            bottom: 0;
            font-weight: 500;
            position: absolute;
        }

        .snip1369 a {
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            position: absolute;
            z-index: 1;
        }

        .snip1369:hover .read-more,
        .snip1369.hover .read-more,
        .snip1369:hover figcaption,
        .snip1369.hover figcaption {
            opacity: 1;
            -webkit-transform: translateX(0px);
            transform: translateX(0px);
        }

        .snip1369:hover figcaption,
        .snip1369.hover figcaption,
        .snip1369:hover .image,
        .snip1369.hover .image {
            -webkit-transition-delay: 0s;
            transition-delay: 0s;
        }

        .snip1369:hover figcaption,
        .snip1369.hover figcaption {
            top: 50%;
        }

        .snip1369:hover .image,
        .snip1369.hover .image {
            bottom: 50%;
        }

        .snip1369:hover p,
        .snip1369.hover p {
            opacity: 1;
            -webkit-transition-delay: 0.2s;
            transition-delay: 0.2s;
        }
    </style>
@endsection

@section('content')
    <div class="mx-auto">
        {{-- Carousel --}}
        <div id="default-carousel" class="relative w-full h-[600px]" data-carousel="slide">

            {{-- Tagline --}}
            <div
                class="absolute top-0 left-0 w-full overflow-hidden h-full z-[90] flex flex-col items-center justify-center p-6 text-center text-white bg-opacity-50 bg-black/40">
                <h2 class="mb-3 text-4xl font-bold sm:mb-4 sm:text-6xl md:text-7xl">Welcome To Page</h2>
                <p class="max-w-4xl mb-4 text-lg sm:mb-6 sm:text-xl md:text-2xl">Sebagai informasi ISEI adalah Ikatan Sarjana
                    Ekonomi Indonesia (ISEI) adalah sebuah organisasi profesional yang berfokus pada bidang ekonomi dan
                    bisnis di Indonesia.
                </p>
                <a href="/"
                    class="inline-flex items-center gap-2 px-4 py-2 text-base text-white transition-transform transform rounded-3xl sm:px-6 sm:py-3 sm:text-lg bg-orange-500 hover:scale-105">
                    Lihat Program
                    <!-- Font Awesome Arrow Icon -->
                    <i class="fas fa-arrow-right text-white"></i>
                </a>
            </div>

            {{-- Carousel Items --}}
            <div class="relative w-full h-full overflow-hidden">
                @foreach (['slide1.jpg', 'slide2.jpg'] as $i => $filename)
                    <div class="{{ $i === 0 ? 'block' : 'hidden' }} duration-700 ease-in-out" data-carousel-item>
                        <img src="{{ asset('storage/images/' . $filename) }}" class="block object-cover w-full h-full"
                            alt="Slide {{ $i + 1 }}">
                    </div>
                @endforeach
            </div>

            {{-- Indicators --}}
            <div class="absolute z-[100] hidden sm:flex space-x-3 -translate-x-1/2 bottom-5 left-1/2 rtl:space-x-reverse">
                @foreach (range(0, 3) as $i)
                    <button type="button" class="w-3 h-3 rounded-full" data-carousel-slide-to="{{ $i }}"
                        aria-label="Slide {{ $i + 1 }}"></button>
                @endforeach
            </div>

            {{-- Controls --}}
            <div class="hidden lg:block">
                <button type="button"
                    class="absolute top-0 left-0 z-[100] flex items-center justify-center h-full px-4 cursor-pointer group focus:outline-none"
                    data-carousel-prev>
                    <span
                        class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-white/30 group-hover:bg-white/50">
                        <svg class="w-4 h-4 text-white" fill="none" stroke="currentColor" viewBox="0 0 6 10">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 1 1 5l4 4" />
                        </svg>
                        <span class="sr-only">Previous</span>
                    </span>
                </button>
                <button type="button"
                    class="absolute top-0 right-0 z-[100] flex items-center justify-center h-full px-4 cursor-pointer group focus:outline-none"
                    data-carousel-next>
                    <span
                        class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-white/30 group-hover:bg-white/50">
                        <svg class="w-4 h-4 text-white" fill="none" stroke="currentColor" viewBox="0 0 6 10">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 9 4-4-4-4" />
                        </svg>
                        <span class="sr-only">Next</span>
                    </span>
                </button>
            </div>
        </div>
        {{-- New Section: Program Terbaru --}}
        <div class="py-12 px-8">
            <div class="mx-auto max-w-[80%]">
                <div class="relative mb-8 flex justify-center items-center">
                    <h2 class="text-5xl font-bold text-center">Program Terbaru</h2>
                    <a href="#"
                        class="absolute right-0 text-lg text-orange-500 hover:underline flex items-center gap-1">
                        See All <i class="fas fa-arrow-right"></i>
                    </a>
                </div>
                <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-10 justify-items-center">
                    @foreach (range(1, 3) as $i)
                        <figure class="snip1369 green rounded scale-105">
                            <img src="{{ asset('storage/images/berita.svg') }}" alt="Card {{ $i }}" />
                            <div class="image">
                                <img src="{{ asset('storage/images/berita.svg') }}" alt="Card {{ $i }}" />
                            </div>
                            <figcaption>
                                <h3 class="text-3xl font-semibold">Judul Berita {{ $i }}</h3>
                                <p class="text-md font-regular mt-2">Lorem ipsum dolor sit amet, consectetur adipiscing
                                    elit.</p>
                                <div class="meta-info mt-2 text-sm flex items-center gap-2 text-white">
                                    <span class="flex items-center gap-1">
                                        <i class="fas fa-eye"></i> 123
                                    </span>
                                    <span class="w-1 h-1 bg-orange-600 rounded-full"></span>
                                    <span class="flex items-center gap-1">
                                        <i class="fas fa-calendar-alt"></i> 01 Jan 2025
                                    </span>
                                </div>
                            </figcaption>
                            <span class="read-more">Read More <i class="fas fa-arrow-right text-white"></i></span>
                            <a href="#"></a>
                        </figure>
                    @endforeach
                </div>
            </div>
        </div>
        {{-- New Section: Berita --}}
        <div class="py-12 px-8 bg-blue-900">
            <div class="mx-auto max-w-7xl">
                <div class="bg-blue-800 p-6 rounded-lg">
                    <div class="p-6 bg-white rounded-2xl">
                        <!-- Header section -->
                        <div class="flex justify-between items-center mb-8">
                            <h2 class="text-3xl font-bold">Berita Terbaru</h2>
                            <a href="#" class="text-xl text-orange-600 hover:text-orange-800">
                                Read More <i class="fas fa-arrow-right"></i>
                            </a>
                        </div>

                        <!-- Carousel container -->
                        <div id="newsCarousel" class="relative" data-carousel="slide">
                            <!-- Carousel wrapper -->
                            <div class="relative h-[400px] overflow-hidden">
                                <!-- Item 1 - ACTIVE by default -->
                                <div class="duration-700 ease-in-out" data-carousel-item>
                                    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4 h-full">
                                        @foreach (range(1, 4) as $i)
                                            <div class="p-4 rounded-lg">
                                                <img src="{{ asset('storage/images/berita.svg') }}"
                                                    alt="Card {{ $i }}"
                                                    class="w-full h-[200px] object-contain mb-4 rounded-lg">
                                                <h3 class="text-xl font-semibold mb-4">
                                                    Desk Proses Penatausahaan Belanja Melalui SIPD RI TA 2024
                                                </h3>
                                                <a href="#" class="text-orange-600 hover:text-orange-800">
                                                    Lihat Berita <i class="fas fa-arrow-right"></i>
                                                </a>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>

                                <!-- Item 2 -->
                                <div class="duration-700 ease-in-out" data-carousel-item>
                                    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4 h-full">
                                        @foreach (range(5, 8) as $i)
                                            <div class="p-4 rounded-lg">
                                                <img src="{{ asset('storage/images/berita.svg') }}"
                                                    alt="Card {{ $i }}"
                                                    class="w-full h-[200px] object-contain mb-4 rounded-lg">
                                                <h3 class="text-xl font-semibold mb-4">
                                                    Berita Lainnya SIPD RI TA 2024
                                                </h3>
                                                <a href="#" class="text-orange-600 hover:text-orange-800">
                                                    Lihat Berita <i class="fas fa-arrow-right"></i>
                                                </a>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>

                            <!-- Navigation buttons -->
                            <button type="button"
                                class="absolute top-1/2 left-0 -translate-y-1/2 z-30 flex items-center justify-center h-10 w-10 rounded-full bg-blue-900/30 hover:bg-blue-900/50 focus:outline-none"
                                data-carousel-prev>
                                <svg class="w-5 h-5 text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
                                    fill="none" viewBox="0 0 6 10">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2" d="M5 1 1 5l4 4" />
                                </svg>
                            </button>
                            <button type="button"
                                class="absolute top-1/2 right-0 -translate-y-1/2 z-30 flex items-center justify-center h-10 w-10 rounded-full bg-blue-900/30 hover:bg-blue-900/50 focus:outline-none"
                                data-carousel-next>
                                <svg class="w-5 h-5 text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
                                    fill="none" viewBox="0 0 6 10">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2" d="m1 9 4-4-4-4" />
                                </svg>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        {{-- New Section: Berita --}}
        <div class="py-12 px-8 bg-blue-900">
            <div class="mx-auto text-start">
                <div class="bg-dark-blue p-6 rounded-lg">
                    <!-- Title inside the card container -->
                    <div class="p-6 bg-white rounded-2xl">
                        <div class="flex justify-between items-center mb-8">
                            <h2 class="text-3xl font-bold">Berita Terbaru</h2>
                            <a href="#" class="text-xl text-orange-600 hover:text-orange-800">
                                Read More <i class="fas fa-arrow-right"></i>
                            </a>
                        </div>

                        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
                            @foreach (range(1, 4) as $i)
                                <div class="p-6 rounded-lg">
                                    <img src="{{ asset('storage/images/berita.svg') }}" alt="Card {{ $i }}"
                                        class="w-full h-[200px] object-cover mb-4 rounded-lg">
                                    <h3 class="text-xl font-semibold mb-4">
                                        Desk Proses Penatausahaan Belanja Melalui SIPD RI TA 2024
                                    </h3>
                                    <a href="#" class="text-orange-600 hover:text-orange-800">
                                        Lihat Berita <i class="fas fa-arrow-right"></i>
                                    </a>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
        {{-- publikasi --}}
        <div class="py-12 px-8">
            <h2 class="text-3xl font-bold text-black mb-8">Publikasi Terbaru</h2>
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
        {{-- APB --}}
        <div class="max-w-screen-xl mx-auto px-4 py-8">
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                <!-- Column 1 -->
                <div>
                    <h2 class="text-xl font-bold mb-4 text-start">APBDes 2025 Pendapatan</h2>
                    <h2 class="text-md font-semibold mb-4 text-start">Realisasi | Anggaran</h2>
                    <div class="space-y-4">
                        @for ($i = 1; $i <= 3; $i++)
                            <div class="bg-white rounded-xl shadow p-6">
                                <h3 class="text-lg font-semibold mb-4">Progress C{{ $i }}</h3>
                                <div class="w-full bg-gray-200 rounded-full h-4">
                                    <div class="bg-orange-400 h-4 rounded-full" style="width: 70%"></div>
                                </div>
                                <p class="text-sm text-gray-500 mt-2">70% completed</p>
                            </div>
                        @endfor
                    </div>
                </div>
                <!-- Column 2 -->
                <div>
                    <h2 class="text-xl font-bold mb-4 text-start">APBDes 2025 Pendapatan</h2>
                    <h2 class="text-md font-semibold mb-4 text-start">Realisasi | Anggaran</h2>
                    <div class="space-y-4">
                        @for ($i = 1; $i <= 3; $i++)
                            <div class="bg-white rounded-xl shadow p-6">
                                <h3 class="text-lg font-semibold mb-4">Progress C{{ $i }}</h3>
                                <div class="w-full bg-gray-200 rounded-full h-4">
                                    <div class="bg-orange-400 h-4 rounded-full" style="width: 70%"></div>
                                </div>
                                <p class="text-sm text-gray-500 mt-2">70% completed</p>
                            </div>
                        @endfor
                    </div>
                </div>
                <!-- Column 3 -->
                <div>
                    <h2 class="text-xl font-bold mb-4 text-start">APBDes 2025 Pendapatan</h2>
                    <h2 class="text-md font-semibold mb-4 text-start">Realisasi | Anggaran</h2>
                    <div class="space-y-4">
                        @for ($i = 1; $i <= 3; $i++)
                            <div class="bg-white rounded-xl shadow p-6">
                                <h3 class="text-lg font-semibold mb-4">Progress C{{ $i }}</h3>
                                <div class="w-full bg-gray-200 rounded-full h-4">
                                    <div class="bg-orange-400 h-4 rounded-full" style="width: 70%"></div>
                                </div>
                                <p class="text-sm text-gray-500 mt-2">70% completed</p>
                            </div>
                        @endfor
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection


@section('js')
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const carousel = new Carousel(document.getElementById('newsCarousel'), {
                interval: 4000
            });
        });
    </script>
    <script>
        /* Demo purposes only */
        $(".hover").mouseleave(
            function() {
                $(this).removeClass("hover");
            }
        );
    </script>
@endsection
