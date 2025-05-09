@extends('tests.landing-base')

@section('css')
@endsection

@section('content')
    {{-- testimon --}}
    <div class="px-20 py-12 mx-auto">
        <h2 class="mb-8 text-3xl font-bold text-black text-start">Berita Terbaru</h2>
        <div class="overflow-x-auto">
            <div class="flex px-2 pb-4 space-x-6">
                @for ($i = 1; $i <= 5; $i++)
                    <div class="min-w-[300px] bg-white rounded-2xl shadow-md p-6 flex-shrink-0">
                        <!-- Main image -->
                        <img src="{{ asset('storage/images/berita.svg') }}" alt="Card {{ $i }}"
                            class="object-cover w-full h-32 mb-4 rounded-lg">

                        <!-- Publisher Info -->
                        <div class="flex items-center mb-3">
                            <img src="{{ asset('storage/images/fate.jpg') }}" alt="Publisher"
                                class="object-cover w-8 h-8 mr-3 rounded-full">
                            <span class="text-sm font-medium text-gray-700">Nama Publisher</span>
                        </div>

                        <!-- Title -->
                        <h3 class="mb-1 text-xl font-semibold">Judul Berita {{ $i }}</h3>

                        <!-- Description -->
                        <p class="mb-4 text-sm text-gray-600">
                            Temukan distributor yang terverifikasi di dekat Anda atau jadilah distributor!
                        </p>
                        <a href="#" class="text-orange-600 hover:text-orange-800">
                            Lihat Berita
                            <i class="fas fa-arrow-right"></i>
                        </a>
                    </div>
                @endfor
            </div>
        </div>
    </div>
@endsection


@section('js')
@endsection
