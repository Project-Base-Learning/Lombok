@props([
    'url' => '#'
])

<li>
    <a href="{{ $url }}" target="_blank" rel="noopener noreferrer" class="font-medium text-gray-700 hover:text-red">
       {{ $slot }}
    </a>
</li>
