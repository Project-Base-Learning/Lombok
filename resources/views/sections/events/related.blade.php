<div class="px-6 py-10 sm:px-12 lg:px-20 xl:px-40 sm:py-16 lg:py-20">
    <!-- Title Section -->
    <div class="relative flex items-center justify-between mb-8 space-x-2">
        <h1 class="w-full text-2xl font-semibold sm:text-3xl lg:text-4xl">Event Terkait</h1>
        {{-- <a href="{{ route('events') }}" class="absolute top-0 right-0 flex items-center gap-2 font-semibold transition-transform transform text-red whitespace-nowrap hover:scale-105">
            See All
            <img class="w-4 h-4 transition-transform hover:scale-105" src="{{ asset("image/arrow-right-red.svg") }}" alt="">
        </a> --}}
    </div>

    <!-- Grid Section -->
    <div class="grid grid-cols-1 gap-4 mt-5 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
        @foreach ($data['related'] as $item)
            @include('components.cardEvent')
        @endforeach
    </div>
</div>
