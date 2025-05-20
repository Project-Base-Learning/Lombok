@props([
    'category' => '',
    'slug' => '',
    'class' => '',
    'has_detail_page' => false
])

<a href={{ route('detail', ['category' => $category, 'slug' => $slug]) }}
    @class([
        $class,
        'pointer-events-none cursor-default' => !$has_detail_page
    ])
>{{ $slot }}</a>
