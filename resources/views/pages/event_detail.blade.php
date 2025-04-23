@extends('layouts.detail')

@section('ticketing')
    {{-- Ticketing --}}
    <div class="grid grid-cols-1 gap-y-0 sm:gap-y-2 md:gap-y-4 sm:grid-cols-2 md:grid-cols-3 py-2 sm:py-4 md:py-8 px-2 md:px-2 mb-4 border-2 rounded-lg shadow-md border-b-slate-50 sm:[&>*]:border-r-2 [&>*]:py-2 sm:[&>*]:py-0 [&>*:not(:nth-child(1))]:border-t-2 sm:[&>*]:!border-t-0 [&>*]:px-2 md:[&>*]:px-4 sm:[&>*:nth-child(even)]:!border-r-0 md:[&>*:nth-child(even)]:!border-r-2 md:[&>*:nth-child(3n)]:!border-r-0 last:odd:col-span-2">
        @if ($data['article']->fields['start_date'])
            <div class="flex flex-col gap-2 text-center">
                <h3 class="text-xl font-bold">Tanggal Mulai</h3>
                <p class="text-xl font-light">{{ date('d M Y h:i', strtotime($data['article']->fields['start_date'])) }}</p>
            </div>
        @endif
        @if ($data['article']->fields['finish_date'])
            <div class="flex flex-col gap-2 text-center">
                <h3 class="text-xl font-bold">Tanggal Selesai</h3>
                <p class="text-xl font-light">{{ date('d M Y h:i', strtotime($data['article']->fields['finish_date'])) }}</p>
            </div>
        @endif
        @if ($data['article']->fields['location'])
            <div class="flex flex-col gap-2 text-center">
                <h3 class="text-xl font-bold">Lokasi</h3>
                <a href="{{ $data['article']->fields['location'] }}" class="px-4 py-2 mx-auto text-sm font-medium text-white transition-transform transform rounded-lg w-fit bg-red hover:scale-105" target="blank">Lokasi</a>
            </div>
        @endif
        @if ($data['article']->fields['has_ticket'])
            @if ($data['article']->fields['ticketing']['quota'])
                <div class="flex flex-col gap-2 text-center">
                    <h3 class="text-xl font-bold">Kouta</h3>
                    <p class="text-xl font-light">{{ $data['article']->fields['ticketing']['quota'] }} Orang</p>
                </div>
            @endif
            @if ($data['article']->fields['ticketing']['quota'])
                <div class="flex flex-col gap-2 text-center">
                    <h3 class="text-xl font-bold">HTM</h3>
                    <p class="text-xl font-light">Rp. {{ number_format($data['article']->fields['ticketing']['price'], 0, '', '.') }}</p>
                </div>
            @endif
            <div class="flex flex-col gap-2 text-center">
                <h3 class="text-xl font-bold">Beli Tiket</h3>
                <a href="{{ $data['article']->fields['ticketing']['quota'] }}" class="px-4 py-2 mx-auto text-sm font-medium text-white transition-transform transform rounded-lg w-fit bg-red hover:scale-105" target="blank">Beli</a>
            </div>
        @endif
    </div>
@endsection
