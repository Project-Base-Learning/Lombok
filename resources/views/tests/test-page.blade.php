@extends('tests.test-landing-base')

@section('content')
    <div class="flex flex-row flex-wrap gap-8 px-40 py-20">
        @foreach ($items as $key => $categories)
        <div class="flex-1 max-w-1/3">
            <a style="font-size:40px;" id="{{ $key }}">{{ $key }}</a>
            <ul class="flex-col gap-2 nav">
                @foreach ($categories as $category)
                    <a href="#">{{ $category->category_name }}</a>
                @endforeach
            </ul>
        </div>
        @endforeach
    </div>
@endsection
