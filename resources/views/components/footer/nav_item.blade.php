@props([
    'slug' => '/',
    'url' => null
])

<li>
    <a href="{{ $url ?? route($slug) }}"
        @class([
            "text-base font-semibold text-gray-700 md:text-lg hover:text-red",
            'font-bold underline' => request()->routeIs($slug)
        ])
    >{{ $slot }}</a>
</li>
