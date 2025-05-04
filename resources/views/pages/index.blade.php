@extends('layouts.landing-base')

@section('content')
    @foreach ($data['page']->sections as $item)
        @include('sections.'.$item->section->layout_path)
    @endforeach()
@endsection

