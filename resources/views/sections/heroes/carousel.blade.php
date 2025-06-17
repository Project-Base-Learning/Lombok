<div class="w-full mx-auto h-[600px] relative">
    <div id="default-carousel" class="relative w-full h-full" data-carousel="slide">

        {{-- Tagline --}}
        <div class="absolute top-0 left-0 w-full h-full z-[90] flex flex-col items-center justify-center p-6 text-center text-white bg-black/40 bg-opacity-50">
            <h2 class="mb-3 text-4xl font-bold sm:mb-4 sm:text-6xl md:text-7xl" data-aos="fade-down">
                Welcome To {{ $data['site_name'] }}
            </h2>
            <p class="max-w-4xl mb-4 text-lg sm:mb-6 sm:text-xl md:text-2xl hidden sm:block" data-aos="fade-down">
                Jelajahi keindahan alam yang luar biasa, nikmati budaya yang kaya, dan rasakan pengalaman tak terlupakan di desa-desa wisata Lombok. Temukan kedamaian dan petualangan dalam setiap langkah.
            </p>
            <a href="/"
                class="inline-flex items-center gap-2 px-4 py-2 text-base text-white transition-transform transform bg-orange-500 rounded-3xl sm:px-6 sm:py-3 sm:text-lg hover:scale-105"
                data-aos="fade-down">
                Lihat Program
                <i class="text-white fas fa-arrow-right"></i>
            </a>
        </div>

        {{-- Carousel Items --}}
        <div class="relative w-full h-full overflow-hidden">
            <div class="hidden duration-700 ease-in-out" data-carousel-item>
                <img src="{{ asset('image/home/banner1.jpg') }}" class="block object-cover w-full h-full" alt="Image 1">
            </div>
            <div class="hidden duration-700 ease-in-out" data-carousel-item>
                <img src="{{ asset('image/home/banner2.jpg') }}" class="block object-cover w-full h-full" alt="Image 2">
            </div>
            <div class="hidden duration-700 ease-in-out" data-carousel-item>
                <img src="{{ asset('image/home/banner3.jpg') }}" class="block object-cover w-full h-full" alt="Image 3">
            </div>
            <div class="hidden duration-700 ease-in-out" data-carousel-item>
                <img src="{{ asset('image/home/banner4.jpg') }}" class="block object-cover w-full h-full" alt="Image 4">
            </div>
        </div>

        {{-- Indicators --}}
        <div class="absolute z-[100] hidden sm:flex space-x-3 -translate-x-1/2 bottom-5 left-1/2 rtl:space-x-reverse">
            <button type="button" class="w-3 h-3 rounded-full" data-carousel-slide-to="0" aria-label="Slide 1"></button>
            <button type="button" class="w-3 h-3 rounded-full" data-carousel-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" class="w-3 h-3 rounded-full" data-carousel-slide-to="2" aria-label="Slide 3"></button>
            <button type="button" class="w-3 h-3 rounded-full" data-carousel-slide-to="3" aria-label="Slide 4"></button>
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
</div>
