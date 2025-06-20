@props([
    'slug' => '/',
    'url' => null
])

<li class="w-full px-4 md:px-0 md:w-fit">
    <a href="{{ $url ?? route($slug) }}"
        target="{{ $url != null ? '_blank' : '_parent' }}"
        @class([
            'hover:block block font-semibold md:hover:scale-110 hover:font-bold hover:underline py-2 px-8 md:py-0 md:px-0',
            'font-bold underline' => $url != null ? false : request()->routeIs($slug)
        ])
    >{{ $slot }}</a>
</li>
