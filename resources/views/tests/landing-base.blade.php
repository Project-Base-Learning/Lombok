<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="shortcut icon" href="{{ asset('favicon.ico') }}">

    <title>@yield('title', 'Landing Page')</title>
    <meta name="title" content="@yield('meta_title', 'Landing Page')">
    <meta name="description" content="@yield('meta_description', 'Default landing page description')">

    {{-- Open Graph --}}
    <meta property="og:title" content="@yield('meta_title', 'Landing Page')">
    <meta property="og:description" content="@yield('meta_description', 'Default landing page description')">
    <meta property="og:image" content="@yield('meta_image', asset('default-image.jpg'))">
    <meta property="og:url" content="{{ Request::url() }}">
    <meta property="og:type" content="website">

    {{-- CDN --}}
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap" rel="stylesheet">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    {{-- Styles --}}
    @yield('css')
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>

<body class="antialiased text-gray-900 break-words">

    {{-- Header --}}
    @includeIf('tests.components.navigation.navbar')

    {{-- Main Content --}}
    @yield('content')

    {{-- Footer --}}
    @includeIf('tests.components.navigation.footer')

    <script src="https://kit.fontawesome.com/f87eaab4e6.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            AOS.init({
                once: true
            });
        });
    </script>

    @yield('js')
</body>

</html>
