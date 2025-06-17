<div class="relative group transform transition-transform duration-300 hover:scale-105">
    {{-- Full clickable overlay --}}
    <x-links.detail
        category="{{ $item->category->slug }}"
        slug="{{ $item->slug }}"
        class="absolute inset-0 z-10"
        has_detail_page="{{ $item->category->detail_page ? true : false }}"
    />

    {{-- Card content --}}
    <div class="relative flex flex-row pb-4 mb-4 border-b border-gray-300 sm:flex-col lg:border-none bg-white rounded-lg">
        {{-- Image --}}
        <div class="w-3/12 mr-4 sm:mr-0 sm:mb-4 sm:w-full overflow-hidden rounded-lg">
            <img src="{{ Storage::url($item->cover?->path) }}"
                 alt="{{ $item->cover?->alt ?? $item->title }}"
                 class="object-cover w-full h-full transition-transform duration-300 rounded-lg shadow-md group-hover:scale-105 aspect-[5/4] sm:aspect-[16/9]"
                 loading="lazy">
        </div>

        {{-- Content --}}
        <div class="flex flex-col w-9/12 sm:w-full grow">
            {{-- Tags --}}
            <div class="flex flex-wrap mb-0.5">
                @foreach ($item->tags as $tag)
                    <x-links.tag search="{{ $data['navigation']['search'] ? true : false }}" tag="{{ $tag->slug }}" />
                @endforeach
            </div>

            {{-- Title and date --}}
            <div class="flex flex-col justify-between grow">
                <h5 class="text-sm font-bold sm:text-lg line-clamp-3">{{ $item->title }}</h5>
                <p class="text-[0.5rem] md:text-sm text-gray-600">
                    {{ \Carbon\Carbon::parse($item->published_at)->diffForHumans() }}
                </p>
            </div>
        </div>
    </div>
</div>
