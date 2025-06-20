@props([
    'slug' => '/',
    'url' => null
])

<li>
    <a href="{{ $url ?? route($slug) }}"
        target="{{ $url != null ? '_blank' : '_parent' }}"
        @class([
            "text-base font-semibold text-gray-700 md:text-lg hover:text-red",
            'font-bold underline' => $url != null ? false : request()->routeIs($slug)
        ])
    >{{ $slot }}</a>
</li>
