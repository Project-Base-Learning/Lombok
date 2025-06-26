@extends('layouts.landing-base')

@section('css')
    <style>
        .tiptap * {
            all: revert;
            max-width: 100%;
            overflow: hidden;
        }
    </style>
@endsection

@section('content')
    <div class="lg:max-w-[84%] py-10 mx-auto px-4 sm:px-6">
        <!-- Event Header -->
        <div class="mb-4">
            <h1 class="mb-4 text-2xl font-bold sm:text-4xl lg:text-6xl">{{ $data['article']->title }}</h1>
            <div class="flex items-center gap-2 mb-4 text-xs md:text-sm">
                <p>By</p>
                <img class="rounded-full w-[1rem] h-[1rem] md:w-[2rem] md:h-[2rem]"
                    src={{ $data['article']->creator->profile_image ? Storage::url($data['article']->creator->profile_image) : 'https://ui-avatars.com/api/?name=' . $data['article']->creator->name }}
                    alt={{ $data['article']->creator->name }}>
                <p>{{ $data['article']->creator->name }} at {{ date('d/m/Y', strtotime($data['article']->published_at)) }}</p>
            </div>
            {{-- @dd($data['article']->tags) --}}
            <div class="flex flex-wrap mb-4">
                @foreach ($data['article']->tags as $tag)
                    <x-links.tag search="{{ $data['navigation']['search'] ? true : false }}" category="{{ $data['article']->category->slug }}" tag='{{ $tag->tag_name }}' slug='{{ $tag->slug }}' />
                @endforeach
            </div>
        </div>

        <!-- Event Image Grid -->
        <div class="relative mb-4 overflow-hidden rounded-lg shadow-md group">
            <img src={{ Storage::url($data['article']->cover?->path) }} alt="{{ $data['article']->cover?->alt }}"
                class="object-cover w-full transition-transform duration-300 group-hover:scale-105">
            <div class="absolute inset-0 w-full h-full bg-red bg-opacity-10"></div>
        </div>

        <!-- Event Description -->
        <div class="mt-4 text-gray-800 tiptap">
            {!! tiptap_converter()->asHTML($data['article']->content) !!}
        </div>
    </div>

    @if (!$data['article']->sponsors->isEmpty())
        @include('sections.others.sponsors')
    @endif

    {{-- other event --}}
    @if (!$data['related']->isEmpty())
        @include('sections.others.related')
    @endif
@endsection
