@props([
    'url' => '#',
    'brand' => ''
])

<a href="{{ $url }}" target="_blank" rel="noopener noreferrer" class="w-7 h-7 md:w-9 md:h-9 hover:scale-[1.1]">
    <i class="fa-brands fa-{{ $brand }}"></i>
</a>
