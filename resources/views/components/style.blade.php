{{-- <style>
    :root {
    @foreach ($data['theme'] as $keyColor => $color)
        @if ($color)
            @foreach ($color as $keyShade => $shade)
                --color-{{ $keyColor }}-{{ $keyShade }}: rgb({{ $shade }})!important;
            @endforeach
        @endif
    @endforeach
    }
</style> --}}
