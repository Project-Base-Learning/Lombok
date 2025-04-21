<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    @yield('meta')
    <title>Page Test</title>
    <link rel="shortcut icon" href="{{ asset('image/favicon.ico') }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/f87eaab4e6.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    @yield('css')
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>

<body>
    <style>
        .active {
            color: #F32055 !important;
        }

        /* Default navbar styles */
        header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: transparent;
            z-index: 1000;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        header.scrolled {
            background-color: #F32055;
            /* Background color when scrolled */
        }

        /* Default navbar text color */
        header .nav-link {
            color: #000000;
            /* Default text color */
            transition: color 0.3s ease;
        }

        /* Navbar text color when scrolled */
        header.scrolled .nav-link {
            color: #ffffff;
            /* White text color for all links */
        }

        /* Active link styles */
        header .nav-link.active {
            color: #F32055;
            /* Default active color (red) */
        }

        header.scrolled .nav-link.active {
            color: #ffffffff !important;
            /* Active link becomes white when scrolled */
            opacity: 100% !important;
        }

        header.scrolled .nav-link {
            color: #ffffffff !important;
            opacity: 75% !important;
        }

        /* Prevent content overlap */
        body {
            padding-top: 80px;
            /* Adjust based on navbar height */
        }

        nav.item {
            color: #181818;
        }
    </style>

    @include('tests.test-navigation')

    @yield('content')

    @include('tests.test-footer')

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.0/flowbite.min.js"></script>
    <script>
        window.addEventListener('scroll', function() {
            const navbar = document.getElementById('navbar');
            if (window.scrollY > 50) { // Adjust '50' for the scroll threshold
                navbar.classList.add('scrolled');
            } else {
                navbar.classList.remove('scrolled');
            }
        });
    </script>
    <script>
        let errorTimeout;

        // Validate the search input
        function validateSearch() {
            const searchInput = document.getElementById("search");
            const errorMessage = document.getElementById("error-message");

            if (searchInput.value.trim() === "") {
                // Show error message
                errorMessage.classList.remove("hidden");
                searchInput.focus();

                // Automatically hide the error message after 2.5 seconds
                clearTimeout(errorTimeout); // Clear any existing timeout
                errorTimeout = setTimeout(() => {
                    errorMessage.classList.add("hidden");
                }, 2500);
            } else {
                errorMessage.classList.add("hidden");
                alert("Searching for: " + searchInput.value); // Placeholder for actual search logic
            }
        }

        // Hide the error message when clicking outside
        document.addEventListener("click", function (e) {
            const searchInput = document.getElementById("search");
            const errorMessage = document.getElementById("error-message");
            const searchIcon = document.getElementById("search-icon");

            // Check if the click is outside the search input and search icon
            if (e.target !== searchInput && e.target !== searchIcon && !searchIcon.contains(e.target)) {
                errorMessage.classList.add("hidden");
            }
        });
    </script>
    @yield('js')
</body>

</html>
