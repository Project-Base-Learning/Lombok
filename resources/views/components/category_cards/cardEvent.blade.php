<div class="relative flex flex-row px-2 pb-4 border-b border-gray-300 sm:!flex-col group lg:border-none" title="{{ $item->title }}">
    <a href={{ route('detail', ['tag' => $item->tag->tag, 'slug' => $item->slug]) }} class="absolute top-0 bottom-0 left-0 right-0 z-10 "></a>
    <div class="w-5/12 mr-4 sm:mr-0 sm:!mb-4 sm:!w-full">
        <img src="{{ Storage::url($item->cover->first()->image_path) }}" alt="{{ $item->cover->first()->alt }}" class="object-cover w-full transition-transform rounded-lg shadow-md group-hover:scale-105 h-full sm:h-fit sm:aspect-[16/9]" loading="lazy">
    </div>
    <div class="flex flex-col w-7/12 sm:!w-full">
        <div>
            <h5 class="text-sm font-bold sm:!text-lg line-clamp-2">{{ $item->title }}</h5>
            <p class="text-xs sm:!text-sm">{{ \Carbon\Carbon::parse($item->published_at)->diffForHumans() }}</p>
        </div>
    </div>
</div>
