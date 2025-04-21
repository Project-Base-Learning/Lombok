<div class="relative flex flex-row pb-4 mb-4 border-b border-gray-300 sm:!flex-col group lg:border-none" title="{{ $item->title }}">
    <a href={{ route('detail', ['tag' => $item->tag->tag, 'slug' => $item->slug]) }} class="absolute top-0 bottom-0 left-0 right-0 z-10 "></a>
    <div class="w-3/12 mr-4 sm:mr-0 sm:!mb-4 sm:!w-full">
        <img src="{{ Storage::url($item->cover->first()->image_path) }}" alt="{{ $item->cover->first()->alt }}" class="object-cover w-full transition-transform rounded-lg shadow-md group-hover:scale-105 aspect-[5/4] sm:aspect-[16/9]" loading="lazy">
    </div>
    <div class="flex flex-col w-9/12 sm:!w-full">
        <div class="flex flex-wrap mb-0.5">
            @foreach ($item->categories as $category)
                <a href="{{ route('search', ['categories' => $category->category_name]) }}" class="bg-red bg-opacity-80 text-white text-[0.625rem] me-2 px-1 py-0.5 md:px-2 md:text-xs  rounded dark:bg-gray-700 dark:text-pink-400 border border-pink-400 z-20 font-semibold" title="{{ $category->category_name }}">
                    {{ $category->category_name }}
                </a>
            @endforeach
        </div>
        <div class="flex flex-col justify-between grow">
            <h5 class="text-sm font-bold sm:!text-lg line-clamp-3">{{ $item->title }}</h5>
            <p class="text-[0.5rem] md:!text-sm">{{ \Carbon\Carbon::parse($item->published_at)->diffForHumans() }}</p>
        </div>
    </div>
</div>
