@extends('sections.layouts.pagination.4_columns')

@section('title')
    <div class="relative flex items-center justify-center mb-8">
        <h1 class="pb-4 text-2xl font-semibold sm:text-3xl lg:text-5xl">{{ $section->dataset->category->category_name }}
            Terbaru</h1>
        <a href="{{ route($data['navigation']['search']['slug'], ['category' => $section->dataset->category->slug]) }}"
            class="absolute right-0 flex items-center gap-1 text-lg text-orange-500 hover:underline">
            See All <i class="fas fa-arrow-right"></i>
        </a>
    </div>
@overwrite

@section('items')
    @if ($data['loads'][$section->dataset->variable_name]->isEmpty())
        <p class="text-xl text-center">Hasil tidak ditemukan</p>
    @else
        @foreach ($data['loads'][$section->dataset->variable_name] as $item)
            @include('components.category_cards.' . $section->dataset->category->card_layout)
        @endforeach
    @endif
@overwrite

@section('pagination')
    @if ($section->dataset->paginate)
        {{ $data['loads'][$section->dataset->variable_name]->appends([$section->dataset->variable_name . '_page' => $data['loads'][$section->dataset->variable_name]->currentPage()])->links() }}
    @elseif ($data['navigation']['search'])
    @endif
@overwrite
