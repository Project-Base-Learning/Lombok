@extends('layouts.landing-base')

@section('css')
    <style>
        .scrollbar-hide::-webkit-scrollbar {
            display: none;
        }

        .scrollbar-hide {
            -ms-overflow-style: none;
            scrollbar-width: none;
        }
    </style>
@endsection

@section('content')
    {{-- highlight --}}
    <div class="flex flex-col w-full gap-8 px-8 py-20 lg:px-20" data-aos="fade-right">
        <h3 class="text-2xl font-semibold text-orange-600 text-start">Berita</h3>
        <h1 class="text-5xl font-semibold text-start">Strategi Go-Digital UMKM Zaman Now</h1>

        <!-- Hero Image -->
        <img src="{{ asset('storage/images/beritas.png') }}" alt="Hero UMKM"
            class="w-full max-h-[500px] object-cover rounded-lg shadow-lg">
        <!-- Publisher Info -->
        <div class="flex items-center mb-3">
            <img src="{{ asset('storage/images/fate.jpg') }}" alt="Publisher" class="w-8 h-8 rounded-full mr-3 object-cover">
            <span class="text-xl font-semibold">Wildan Ganteng</span>
            <span class="w-4 h-4 bg-orange-600 rounded-full mx-2"></span>
            <span class="flex items-center gap-2">
                <i class="fas fa-calendar-alt text-lg"></i>
                <span class="text-base">01 Jan 2025</span>
            </span>
        </div>
        <!-- Description -->
        <h3 class="text-2xl font-semibold">Berita</h3>
        <p class="text-lg text-gray-700 leading-relaxed">
            Ikatan Sarjana Ekonomi Indonesia (ISEI) menyelenggarakan kegiatan Capacity Building dengan mengangkat tema
            ”Perkembangan Perekonomian Daerah Terkini” pada Selasa, 20 Agustus 2024 secara daring. Kegiatan ini diinisiasi
            oleh Bidang II Pengurus Pusat (PP) ISEI berkolaborasi dengan Bank Indonesia Institute. Kegiatan yang merupakan
            salah satu rangkaian kegiatan Road to Kongres ISEI XXII Solo dihadiri sekitar 150 peserta secara online yang
            terdiri dari perwakilan akademisi (A), pelaku usaha (Business/B) dan Pemerintah (Government/G) dari ISEI pusat
            maupun daerah, kegiatan dibuka oleh Sekretaris Umum PP ISEI, Yoga Affandi, yang juga selaku Kepala Bank
            Indonesia Institute. Adapun narasumber pada kegiatan Capacity Building yaitu Direktur Departemen Regional Bank
            Indonesia, Firdauz Muttaqin, beserta perwakilan dari Koordinator Wilayah Bank Indonesia (Sumatera, Jawa, dan
            Sulampua).
        </p>
    </div>
    {{-- Beritas --}}
    <div class="mx-auto max-w-[90%]" data-aos="fade-up">
        <!-- Header + Controls -->
        <div class="relative mb-6 flex flex-col lg:flex-row justify-between items-start lg:items-center gap-4">
            <h2 class="text-4xl font-bold text-center lg:text-left">Berita Lainnya</h2>

            <!-- Carousel Controls -->
            <div class="flex gap-2">
                <button id="scrollLeft"
                    class="bg-orange-500 text-white text-2xl px-6 py-3 rounded-full hover:bg-orange-600 transition">
                    <i class="fas fa-chevron-left"></i>
                </button>
                <button id="scrollRight"
                    class="bg-orange-500 text-white text-2xl px-6 py-3 rounded-full hover:bg-orange-600 transition">
                    <i class="fas fa-chevron-right"></i>
                </button>
            </div>
        </div>

        <!-- Horizontal Scrollable Cards -->
        <div id="carousel"
            class="flex overflow-x-auto space-x-4 scrollbar-hide scroll-smooth bg-white rounded-2xl p-4 mb-12">
            @foreach (range(1, 8) as $i)
                <a href="#" class="flex-shrink-0 w-[360px] h-[360px] p-4 transition-transform duration-300 hover:scale-105">
                    <img src="{{ asset('storage/images/berita.svg') }}" alt="Card {{ $i }}"`
                        class="w-full h-[180px] object-cover mb-4 rounded-lg">
                    <div class="flex items-center mb-3">
                        <img src="{{ asset('storage/images/fate.jpg') }}" alt="Publisher"
                            class="w-4 h-4 rounded-full mr-3 object-cover">
                        <span class="text-md font-semibold">Wildan Ganteng</span>
                        <span class="w-2 h-2 bg-orange-600 rounded-full mx-2"></span>
                        <span class="flex items-center gap-2">
                            <i class="fas fa-calendar-alt text-md"></i>
                            <span class="text-base">01 Jan 2025</span>
                        </span>
                    </div>
                    <h3 class="text-xl font-semibold">Judul Berita {{ $i }}</h3>
                    <p class="text-md text-gray-600">
                        temukan distributor yang terverifikasi di dekat anda atau jadilah distributor!
                    </p>
                </a>
            @endforeach
        </div>
    </div>
@endsection

@section('js')
    <script>
        const carousel = document.getElementById('carousel');
        document.getElementById('scrollLeft').addEventListener('click', () => {
            carousel.scrollBy({
                left: -300,
                behavior: 'smooth'
            });
        });
        document.getElementById('scrollRight').addEventListener('click', () => {
            carousel.scrollBy({
                left: 300,
                behavior: 'smooth'
            });
        });
    </script>
@endsection
