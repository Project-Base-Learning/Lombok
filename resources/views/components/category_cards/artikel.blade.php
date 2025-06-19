<div class="relative flex flex-row pb-4 mb-4 border-b border-gray-300 sm:!flex-col group lg:border-none" title="{{ $item->title }}">
    <x-links.detail category='{{ $item->category->slug }}' slug='{{ $item->slug }}' class='absolute top-0 bottom-0 left-0 right-0 z-10' has_detail_page='{{ $item->category->detail_page ? true : false }}' />
    <div class="w-3/12 mr-4 sm:mr-0 sm:!mb-4 sm:!w-full">
        <img src="{{ Storage::url($item->cover?->path) }}" alt="{{ $item->cover?->alt ?? $item->title }}" class="object-cover w-full transition-transform rounded-lg shadow-md group-hover:scale-105 aspect-[5/4] sm:aspect-[16/9]" loading="lazy">
    </div>
    <div class="flex flex-col w-9/12 sm:!w-full grow">
        <div class="flex flex-wrap mb-0.5">
            @foreach ($item->tags as $tag)
                <x-links.tag search="{{ $data['navigation']['search'] ? true : false }}" category='{{ $item->category->slug }}' tag='{{ $tag->slug }}' />
            @endforeach
        </div>
        <div class="flex flex-col justify-start grow">
            <h5 class="text-sm font-bold sm:!text-lg line-clamp-2">{{ $item->title }}</h5>
            <p class="text-[0.5rem] md:!text-sm mb-2">{{ \Carbon\Carbon::parse($item->published_at)->diffForHumans() }}</p>
            <p class="line-clamp-2">{{ $item->preview_content }}</p>
        </div>
    </div>
</div>
