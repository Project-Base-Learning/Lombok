@props([
    'title' => '',
    'url' => '#',
    'brand' => ''
])

<a href="{{ $url }}" target="_blank" rel="noopener noreferrer" class="hover:scale-[1.1]" title="{{ $title }}">
    <i class="fa-brands fa-{{ $brand }} fa-xl"></i>
</a>
