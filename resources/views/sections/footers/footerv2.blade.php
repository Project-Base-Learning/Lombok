<footer class="px-40 py-10">
    <div class="flex gap-16">
        <div class="flex-col grow">
            <a href="{{ route("home") }}">
                <img class="h-24 mb-4"  src="{{ Storage::url($data['brand']->site_logo) }}" alt="{{ $data['brand']->site_name }}">
            </a>
            <h4 class="w-2/3 pb-2 mb-2 text-lg border-b-2 border-black">Available On</h4>
            <ul class="flex-row gap-2 nav">
                <a href="https://www.facebook.com" class="hover:scale-[1.1]" target="_blank" rel="noopener noreferrer"><img class="h-8" src="{{ asset("image/facebook.svg") }}" alt="Facebook"></a>
                <a href="https://www.instagram.com" class="hover:scale-[1.1]" target="_blank" rel="noopener noreferrer"><img class="h-8" src="{{ asset("image/insta.svg") }}" alt="Instagram"></a>
                <a href="https://wa.me/" class="hover:scale-[1.1]" target="_blank" rel="noopener noreferrer"><img class="h-8" src="{{ asset("image/whatsapp.svg") }}" alt="Whatsapp"></a>
                <a href="https://discord.com" class="hover:scale-[1.1]" target="_blank" rel="noopener noreferrer"><img class="h-8" src="{{ asset("image/discord.svg") }}" alt="Discord"></a>
            </ul>
            <p class="mt-8">Copyright © Cre:HA, 2024 - 2025</p>
        </div>
        <div class="grow-0">
            <h3 class="mb-4 text-3xl">Discover</h3>
            <ul class="nav flex-column">
                @foreach ($data['navigation'] as $item)
                    <li class="mb-2 nav-item">
                        <a href={{ route($item->slug) }} class="p-0 text-lg text-gray-700 nav-item hover:text-red">{{ $item->title }}</a>
                    </li>
                @endforeach
            </ul>
        </div>
        <div class="grow-0">
            <h3 class="mb-4 text-3xl">For Businesses</h3>
            <ul class="nav flex-column">
                <li class="mb-2 nav-item">
                    <a href="mailto:crehadigital@gmail.com" class="p-0 text-lg text-gray-700 nav-item hover:text-red">crehadigital@gmail.com</a>
                </li>
                <li class="mb-2 nav-item">
                    <a href="tel:+6281936282144" class="p-0 text-lg text-gray-700 nav-item hover:text-red">+62 819 3628 2144</a>
                </li>
                <li class="mb-2 nav-item">
                    <a href="https://www.google.com/maps/search/?api=1&query=Denpasar+Utara,+Kota+Denpasar,+Bali" class="p-0 text-lg text-gray-700 nav-item hover:text-red">Denpasar Utara, Kota Denpasar, Bali</a>
                </li>
            </ul>
        </div>
    </div>
</footer>
