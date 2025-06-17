@props([
    'slug' => '/',
    'url' => null
])

@php
    $isActive = request()->is(trim($slug, '/'));
@endphp

<li class="w-full px-4 md:px-0 md:w-fit">
    <a href="{{ $url ?? url($slug) }}"
        @class([
            // Base styles
            'nav-link block font-semibold py-2 px-8 md:py-0 md:px-0 transition-all duration-300 transform origin-center text-[1.2rem]',

            // Hover styles
            'hover:scale-105',

            // Active styles
            'text-orange-500 font-bold' => $isActive,
            'text-black' => !$isActive,
            'max-lg:text-white' => true,
        ])
    >
        {{ $slot }}
    </a>
</li>
