<header id="navbar" class="p-3 mb-3">
    <div class="container">
        <div class="flex-wrap d-flex align-items-center justify-content-center justify-content-lg-start">
            <a href="/" style="font-size: 1.5em;color:#F90218 !important; padding-right:20px"
                class="mb-2 d-flex align-items-center mb-lg-0 link-body-emphasis text-decoration-none">
                {{-- <img style="height: auto; width: 140px;" src="{{ Storage::url($data['webInfo']->logo) }}" alt=""> --}}
            </a>
            <ul class="mb-2 nav col-12 col-lg-auto me-lg-auto justify-content-center mb-md-0"
                style="padding-left: 0; display: flex; justify-content: center; list-style: none; margin: 0 auto; transition: all 0.3s ease;">
                {{-- @foreach ($data['navigation'] as $item)
                    <li>
                        <a href="{{ route($item->article->slug) }}"
                            class="font-semibold nav-link px-2 link-secondary {{ request()->routeIs($item->article->slug) ? 'active' : '' }} hover:scale-110">{{ $item->article->title }}</a>
                    </li>
                @endforeach --}}
            </ul>
            <div class="dropdown text-end" style="color: #F90218;">
                <form action="{{ route('search') }}" method="GET" class="relative flex items-center justify-center">
                    <!-- Search Input -->
                    <input type="text" name="search" id="search" placeholder="search..."
                        class="w-full py-2 pl-10 pr-3 ml-3 text-gray-800 placeholder-gray-500 border-none rounded-full shadow-md focus:outline-none focus:border-red focus:ring-red"
                        style="color: #181818;" required>
                    <button type="submit" class="absolute inset-y-0 flex items-center text-gray-500 left-7">
                        <img src="{{ asset('image/search-1.svg') }}" alt="Search Icon" class="w-5 h-5 cursor-pointer">
                    </button>
                </form>
                <!-- Error Message -->
                <p id="error-message" class="hidden mt-2 text-sm text-red-500">Keyword is required!</p>
            </div>
        </div>
    </div>
</header>
