<style>
    header .nav-link {
        color: #000000;
        transition: color 0.3s ease;
    }

    header .nav-link.active {
        color: #F32055 !important;
    }

    header.scrolled {
        background-color: #ffffff;
    }

    header.scrolled .nav-link {
        /* color: #ffffff !important;
        opacity: 75% !important; */
    }

    header.scrolled .nav-link.active {
        /* color: #ffffff !important;
        opacity: 100% !important; */
    }

    @media (max-width: 1024px) {
        header.scrolled {
            background-color: #ffffff;
        }

        header .nav-link {
            font-size: 1.2rem;
            color: #ffffff !important;
        }
    }

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
        background-color: #F32055 !important;
    }
</style>

<header id="navbar"
    class="sticky top-0 left-0 w-full bg-white border-b border-gray-200 shadow-sm transition-colors duration-300 z-[1000]">
    <div class="mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex items-center justify-between h-16">
            <!-- Left: Logo -->
            <div class="flex items-center w-1/3">
                <a href="{{ url('/') }}" class="flex items-center space-x-2 text-xl font-bold text-black">
                    <img src="{{ asset('storage/images/logos.svg') }}" alt="Logo" class="h-8 w-auto">
                </a>
            </div>

            <!-- Center: Navigation -->
            <div class="hidden lg:flex justify-center w-1/3 space-x-6 whitespace-nowrap overflow-visible">
                <a href="test-landing" class="nav-link font-semibold transition-colors">Home</a>
                <a href="berita" class="nav-link font-semibold transition-colors">Berita</a>
                <a href="publikasi" class="nav-link font-semibold transition-colors">Publikasi</a>
                <a href="program" class="nav-link font-semibold transition-colors">Program</a>
                <a href="about" class="nav-link font-semibold transition-colors">About Us</a>
                <a href="contact" class="nav-link font-semibold transition-colors">Contact Us</a>
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
