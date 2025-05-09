<div class="lg:!px-20 lg:!py-12 md:!px-16 md:!py-12 px-2 py-4 mx-auto max-w-screen-3xl"  data-aos="fade-up">
    <!-- Section Title -->
    @yield('title')

    {{-- Articles Card Contents --}}
    <div class="grid grid-cols-1 gap-4 mt-2 md:grid-cols-2 xl:grid-cols-3"  data-aos="fade-up">
        @yield('items')
    </div>

    @yield('pagination')
</div>
