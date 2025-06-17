<header id="navbar" class="w-full sticky top-0 z-[9999] bg-white py-5 text-black transition-all border-b-2">
    <div class="flex flex-row items-center justify-between w-full px-4 mx-auto lg:px-0 lg:w-11/12">
        <!-- Logo -->
        <a href="{{ route($data['navigation']['home'] ? $data['navigation']['home']['slug'] : '/') }}">
            @if ($data['site_logo'])
                <img class="w-[80px] lg:!w-[120px] h-auto" src="{{ Storage::url($data['site_logo']) }}" alt="$data['site_name']">
            @else
                <h1 class="text-2xl font-bold">{{ $data['site_name'] }}</h1>
            @endif
        </a>

        <!-- Navbar items -->
        <ul id="navMenu" style="transition: all 150ms cubic-bezier(0.4, 0, 0.2, 1), max-height 1000ms cubic-bezier(0.4, 0, 0.2, 1);" class="absolute left-0 flex flex-col items-end w-full overflow-y-auto text-sm text-center bg-white no-scrollbar max-h-0 md:max-h-fit md:overflow-visible md:items-center top-full md:top-0 md:w-fit md:justify-center md:flex-row md:gap-4 lg:text-base md:relative md:pb-0 border-b-2 md:border-b-0">
            @if ($data['navigation']['home'])
                <x-navigation.nav_item slug="{{ $data['navigation']['home']['slug'] }}">
                    {{ $data['navigation']['home']['title'] }}
                </x-navigation.nav_item>
            @endif
            @foreach ($data['navigation']['nav_items'] as $navItem)
                @if ($navItem['type'] == 'link')
                    <x-navigation.nav_item slug="{{ $navItem['link']['url'] }}">
                        {{ $navItem['link']['label'] }}
                    </x-navigation.nav_item>
                @else
                    <x-navigation.nav_item slug="{{ $navItem['page']['slug'] }}">
                        {{ $navItem['page']['title'] }}
                    </x-navigation.nav_item>
                @endif
            @endforeach
        </ul>

        <!-- Search Form -->
        @if ($data['navigation']['search'])
            <form action="{{ $data['navigation']['search']['slug'] }}" method="GET" class="relative flex items-center justify-center gap-4 md:gap-0 w-fit md:w-1/5">
                <input type="text" name="search" id="search" placeholder="Search..." class="hidden w-full py-2 pl-10 pr-2 text-sm text-gray-800 placeholder-gray-400 border-none rounded-full shadow-md md:block focus:outline-none focus:border-red focus:ring-primary-500 lg:text-base">
                <button type="submit" class="relative flex items-center md:absolute md:inset-y-0 md:left-4 md:text-gray-500">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </button>
                <a id="showMenu" class="rounded-md cursor-pointer md:hidden">
                    <i class="fa-solid fa-bars"></i>
                </a>
            </form>
        @else
            <a id="showMenu" class="rounded-md cursor-pointer md:hidden">
                <i class="fa-solid fa-bars"></i>
            </a>
        @endif
    </div>
</header>

<script>
    // window.addEventListener('scroll', function() {
    //     const navbar = document.getElementById('navbar');
    //     const navMenu = document.getElementById('navMenu');
    //     if (window.scrollY > 50) {
    //         navbar.classList.add('!bg-primary-500');
    //         navbar.classList.add('!text-white');
    //         navMenu.classList.add('!bg-primary-500');
    //     } else {
    //         navbar.classList.remove('!bg-primary-500');
    //         navbar.classList.remove('!text-white');
    //         navMenu.classList.remove('!bg-primary-500');
    //     }
    // });

    const showMenu = document.getElementById('showMenu');
    showMenu.addEventListener('click', function() {
        const navMenu = document.getElementById('navMenu');
        navMenu.classList.toggle('max-h-0');
        navMenu.classList.toggle('!max-h-[500px]');
    });
</script>
