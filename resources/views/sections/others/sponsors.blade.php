<div class="flex flex-col gap-20 py-16 text-center lg:px-20 md:px-16 sm:px-16">
    @foreach ($data['sponsors']->groupBy('category_id') as $sponsor_category)
    <div data-aos="fade-up">
        <h1 class="text-4xl font-semibold">{{ $sponsor_category->first()->category->category_name }}</h1>
            <div class="flex flex-wrap items-center justify-center gap-4 mt-4">
                @foreach ($sponsor_category as $sponsor)
                    <div class="flex items-center text-center">
                        <img src="{{ Storage::url($sponsor->image?->path) }}" alt="{{ $item->image?->alt ?? $sponsor->title }}" title="{{$sponsor->title }}" class="w-14 lg:w-auto lg:max-h-20 md:w-24 md:max-h-auto max-h-auto">
                    </div>
                @endforeach
            </div>
        </div>
    @endforeach
</div>
