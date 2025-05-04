<footer class="px-4 py-10 mx-auto w-full max-w-screen-lg lg:max-w-[80%]" data-aos="fade-up">
    <div class="grid grid-cols-2 gap-y-8 md:grid-cols-3 lg:grid-cols-4">

        <!-- Logo Section (No Stretching, Center on Mobile, Left on Tablet/Desktop) -->
        <div class="flex col-span-2 mb-6 md:justify-center md:col-span-3 lg:col-span-1">
            <img class="h-auto max-w-[150px] md:max-w-[192px] lg:max-h-[100px] lg:max-w-[180px]"
                 src="{{ Storage::url($data['site_logo']) }}" alt="Logo">
        </div>

        <!-- Discover Section -->
        <div class="mb-6">
            <a class="text-2xl font-semibold md:text-3xl">Discover</a>
            <ul class="flex flex-col mt-3 space-y-2">
                @foreach ($data['navigation']['nav_items'] as $navItem)
                    @if ($navItem['type'] == 'link')
                        <x-footer.nav_item slug="{{ $navItem['link']['url'] }}">
                            {{ $navItem['link']['label'] }}
                        </x-footer.nav_item>
                    @else
                        <x-footer.nav_item slug="{{ $navItem['page']['slug'] }}">
                            {{ $navItem['page']['title'] }}
                        </x-footer.nav_item>
                    @endif
                @endforeach
            </ul>
        </div>

        <!-- For Businesses Section -->
        <div class="mb-6">
            <a class="text-2xl font-semibold md:text-3xl">For Businesses</a>
            <ul class="flex flex-col mt-3 space-y-2 text-base md:text-lg">
                {{-- <li>
                    <a href="mailto:{{ $data['contacts']['email'] }}" class="font-medium text-gray-700 hover:text-red">
                        {{ $data['contacts']['email'] }}
                    </a>
                </li>
                <li>
                    <a href="tel:{{ $data['contacts']['phone'] }}" class="font-medium text-gray-700 hover:text-red">
                        {{ $data['contacts']['phone'] }}
                    </a>
                </li> --}}
                {{-- <li>
                    <a href="https://www.google.com/maps/search/?api=1&query=Denpasar+Utara,+Kota+Denpasar,+Bali"
                       target="_blank" rel="noopener noreferrer" class="font-medium text-gray-700 hover:text-red">
                        Denpasar Utara, Kota Denpasar, Bali
                    </a>
                </li> --}}
            </ul>
        </div>

        <!-- Available On Section -->
        <div class="col-span-2 md:mb-6 md:col-span-1">
            <a class="text-2xl font-semibold md:text-3xl">Available On</a>
            <ul class="flex gap-3 mt-3">
                {{-- <a href="https://www.facebook.com" target="_blank" rel="noopener noreferrer" class="w-7 h-7 md:w-9 md:h-9 hover:scale-[1.1]">
                    <i class="fa-brands fa-facebook"></i>
                </a> --}}
            </ul>
        </div>
    </div>

    <!-- Footer Bottom Section -->
    <div class="flex flex-col items-start justify-center pt-4 mt-6 border-t border-gray-300 md:items-center">
        <p class="text-sm text-gray-600">Copyright © {{ date('Y') }} - {{ $data['site_name'] }}</p>
    </div>
</footer>
