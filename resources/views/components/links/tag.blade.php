@props([
    'search' => false,
    'tag' => '',
    'def_class' => 'text-black text-[0.625rem] me-2 px-1 py-0.5 md:px-2 md:text-xs rounded bg-secondary-200 border border-secondary-500 z-20 font-semibold',
    'class' => ''
])

@if ($search)
    <a href="{{ route('search', ['tags' => $tag]) }}" title="{{ $tag }}"
        {{ $attributes->merge([
            'class' => $def_class
        ]) }}>
        {{ $tag }}
    </a>
@else
    <p title="{{ $tag }}"
        {{ $attributes->merge([
            'class' => $def_class
        ]) }}>
        {{ $tag }}
    </p>
@endif
