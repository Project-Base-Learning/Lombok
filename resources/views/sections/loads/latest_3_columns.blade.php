@extends('sections.layouts.pagination.3_columns')

@section('title')
    <div class="relative flex flex-col items-center mb-8 space-y-2 border-b-2 border-gray-200">
        <h1 class="pb-4 text-2xl font-semibold border-b-4 border-red sm:text-3xl lg:text-4xl">{{ $section->dataset->category->category_name }} Terbaru</h1>
    </div>
@overwrite

@section('items')
    @if ($data['loads'][$section->dataset->variable_name]->isEmpty())
        <p class="text-xl text-center">Hasil tidak ditemukan</p>
    @else
        @foreach ($data['loads'][$section->dataset->variable_name] as $item)
            @include('components.category_cards.'.$section->dataset->category->card_layout)
        @endforeach
    @endif
@overwrite

@section('pagination')
    <div class="flex justify-center mt-8">
        {{-- <a href="{{ route('articles') }}"
            class="flex items-center gap-2 font-semibold transition-transform text-red hover:scale-105">
            See All
            <img class="w-4 h-4 transition-transform hover:scale-105" src="{{ asset('image/arrow-right-red.svg') }}" alt="Arrow Right">
        </a> --}}
    </div>
@overwrite
