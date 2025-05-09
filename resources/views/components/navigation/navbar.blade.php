<style>
    header .nav-link {
        font-size: 1.2rem;
        color: #000000;
        transition: all 0.3s ease;
        transform-origin: center;
    }

    header .nav-link:hover {
        transform: scale(1.05);
    }

    header .nav-link.active {
        color: #F97316 !important;
        /* Tailwind's orange-500 */
        font-weight: 700;
    }

    header.scrolled {
        background-color: #ffffff;
    }

    @media (max-width: 1024px) {
        header .nav-link {
            color: #ffffff !important;
        }
    }

    /* Hamburger toggle styling */
    #navbar-toggler.toggle span:nth-child(1) {
        transform: rotate(45deg);
        top: 10px;
    }

    #navbar-toggler.toggle span:nth-child(2) {
        opacity: 0;
    }

    #navbar-toggler.toggle span:nth-child(3) {
        transform: rotate(-45deg);
        bottom: 10px;
    }

    #navbar-toggler.toggle span {
        background-color: #F97316 !important;
    }
</style>


<header id="navbar"
    class="sticky top-0 left-0 w-full bg-white border-b border-gray-200 shadow-sm transition-colors duration-300 z-[1000]">
    <div class="mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex items-center justify-between h-[86px]">
            <!-- Left: Logo -->
            <div class="flex items-center w-1/3">
                <a href="{{ url('/') }}" class="flex items-center space-x-2 text-xl font-bold text-black">
                    <img src="{{ asset('storage/images/logos2.svg') }}" alt="Logo" class="h-10 w-auto">
                </a>
            </div>

            <!-- Center: Navigation -->
            <div class="hidden lg:flex justify-center gap-6 whitespace-nowrap overflow-visible">
                <a href="{{ url('test-landing') }}" class="nav-link font-semibold {{ request()->is('test-landing') ? 'active' : '' }}">Home</a>
                <a href="{{ url('berita') }}" class="nav-link font-semibold {{ request()->is('berita') ? 'active' : '' }}">Berita</a>
                <a href="{{ url('publikasi') }}" class="nav-link font-semibold {{ request()->is('publikasi') ? 'active' : '' }}">Publikasi</a>
                <a href="{{ url('program') }}" class="nav-link font-semibold {{ request()->is('program') ? 'active' : '' }}">Program</a>
                {{-- <a href="{{ url('about') }}" class="nav-link font-semibold {{ request()->is('about') ? 'active' : '' }}">About Us</a> --}}
                <a href="{{ url('contact') }}" class="nav-link font-semibold {{ request()->is('contact') ? 'active' : '' }}">Contact Us</a>
            </div>

            <!-- Right: Search & Hamburger -->
            <div class="flex items-center justify-end w-1/3 space-x-4">
                <!-- Search bar -->
                <input type="text" placeholder="Search..."
                    class="hidden lg:block px-3 py-1 border border-gray-300 rounded-xl focus:outline-none focus:ring-2 focus:ring-pink-500">

                <!-- Hamburger (mobile only) -->
                <button id="navbar-toggler" class="lg:hidden p-2 rounded-md text-black focus:outline-none">
                    <span class="block w-6 h-0.5 bg-black mb-1 transition-all"></span>
                    <span class="block w-6 h-0.5 bg-black mb-1 transition-all"></span>
                    <span class="block w-6 h-0.5 bg-black transition-all"></span>
                </button>
            </div>
        </div>

    </div>
</header>


<script>
    window.addEventListener('scroll', function() {
        const navbar = document.getElementById('navbar');
        if (window.scrollY > 50) {
            navbar.classList.add('scrolled');
        } else {
            navbar.classList.remove('scrolled');
        }
    });

    const toggler = document.getElementById('navbar-toggler');
    const mobileNavbar = document.getElementById('mobile-navbar');

    toggler.addEventListener('click', () => {
        mobileNavbar.classList.toggle('hidden');
        toggler.classList.toggle('toggle');
    });
</script>
