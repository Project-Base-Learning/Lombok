<figure class="relative overflow-hidden transition-transform rounded" title="{{ $item->title }}">
    <img src="{{ Storage::url($item->cover->first()?->image_path) }}" alt="{{ $item->title }}" class="object-cover w-full rounded-lg shadow-md group-hover:scale-105 aspect-[230/315]" loading="lazy">
    <figcaption class="absolute top-3/4">
        <h3>Judul Berita 1</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non urna nec libero
            scelerisque aliquet.</p>
        {{-- New meta info block --}}
        <div
            class="flex items-center gap-2 mt-2 text-sm text-white transition-opacity duration-300 opacity-0 meta-info">
            <span class="flex items-center gap-1">
                <i class="fas fa-eye"></i> 123
            </span>
            <span class="w-1 h-1 bg-orange-600 rounded-full"></span>
            <span class="flex items-center gap-1">
                <i class="fas fa-calendar-alt"></i> 01 Jan 2025
            </span>
        </div>
    </figcaption>
    <span class="read-more">Read More <i class="text-white fas fa-arrow-right"></i></span>
    <a href="#"></a>
</figure>
