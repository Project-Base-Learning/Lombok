<footer class="px-40 py-10">
    <div class="row">
        <div class="mb-3 col-6 col-md-3">
            {{-- <img style="height: auto; width: 160px;" src={{ Storage::url($data['webInfo']->logo) }} alt=""> --}}
        </div>
        <div class="mb-3 col-6 col-md-3">
            <a style="font-size:40px;">Discover</a>
            <ul class="nav flex-column">
                {{-- @foreach ($data['navigation'] as $item)
                    <li class="mb-2 nav-item"><a href={{ route($item->article->slug) }} style="font-size:20px; font-semibold;"
                            class="p-0 nav-item">{{ $item->article->title }}</a></li>
                @endforeach --}}
            </ul>
        </div>
        <div class="mb-3 col-6 col-md-3">
            <a style="font-size:40px;">For Businesses</a>
            <ul class="nav flex-column">
                <li class="mb-2 nav-item"><a style="font-size:20px; font-semibold;"
                        class="p-0 nav-item">crehadigital@gmail.com</a>
                </li>
                <li class="mb-2 nav-item"><a style="font-size:20px; font-semibold;"
                        class="p-0 nav-item">+62 819 3628 2144</a></li>
                <li class="mb-2 nav-item"><a style="font-size:20px; font-semibold;"
                        class="p-0 nav-item">Denpasar Utara, Kota Denpasar, Bali </a></li>
            </ul>
        </div>
        <div class="mb-3 col-6 col-md-3">
            <a style="font-size:40px;">Available On</a>
            <ul class="flex-row gap-2 nav">
                <a href="#"><img style="height: auto; width: 40px;" src="image/facebook.svg"
                        alt=""></a>
                <a href=""><img style="height: auto; width: 40px;" src="image/insta.svg"
                        alt=""></a>
                <a href=""><img style="height: auto; width: 40px;" src="image/whatsapp.svg"
                        alt=""></a>
                <a href=""><img style="height: auto; width: 40px;" src="image/discord.svg"
                        alt=""></a>
            </ul>
        </div>
    </div>
    <div class="pt-4 mt-4 d-flex flex-column justify-content-center align-items-center border-top">
        <p class="text-center">Copyright © 2024 - Cre:HA</p>
    </div>
</footer>
