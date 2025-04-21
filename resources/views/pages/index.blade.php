@extends('layouts.landing-base')

@section('content')
    @foreach ($data['page']->sections as $section)
        @include('patterns.'.$section->pattern->layout_path)
    @endforeach()
@endsection

