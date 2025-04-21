<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Not Found</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body>
    <div class="w-[100vw] h-[100vh] overflow-hidden bg-gray-900 relative flex justify-center items-center">
        <img src="{{ asset('image/404.webp') }}" alt="404" class="max-h-screen pointer-events-none">
    </div>
</body>
</html>
