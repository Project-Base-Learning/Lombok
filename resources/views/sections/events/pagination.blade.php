@extends('patterns.layouts.pagination')

@section('title')
    <div class="relative flex flex-col items-start mb-8 space-y-2 border-b-2 border-gray-200">
        <h1 class="pb-4 text-2xl font-semibold border-b-4 border-red sm:text-3xl lg:text-4xl">Event Terbaru</h1>
    </div>
@overwrite

@section('items')
    @if ($data['eventpagination']->isEmpty())
        <p class="py-20 text-xl text-center ">Hasil tidak ditemukan</p>
    @else
        @foreach ($data['eventpagination'] as $item)
            @include('components.cardEvent')
        @endforeach
    @endif
@overwrite

@section('pagination')
    {{ $data['eventpagination']->links() }}
@overwrite
