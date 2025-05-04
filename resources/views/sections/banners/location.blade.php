<div class="flex flex-col items-center justify-center p-5 mx-auto text-white bg-red lg:flex-row">
    <div class="flex flex-col items-center lg:w-1/2" data-aos="fade-up">
        <h2 class="mb-2 text-3xl font-semibold text-center">Let’s see our planned location.</h2>
        <p class="mb-4 text-lg text-center">Dharma Negara Alaya (DNA Art & Creative Hub Denpasar)</p>
        <img class="mb-4" src="{{ asset('image/dna-small.svg') }}" alt="DNA Icon">
        <a href="{{ route("events") }}"
            class="flex items-center gap-2 px-6 py-2 text-lg transition-transform transform bg-white rounded-lg text-red hover:scale-105">
            Lihat Event
            <img src="{{ asset('image/arrowalt-right-red.svg') }}" alt="Arrow Right" class="w-5 h-5">
        </a>
    </div>
    <div class="flex justify-center mt-4 lg:w-1/2 lg:mt-0" data-aos="fade-up">
        <img src="{{ asset('image/dna.jpeg') }}" alt="Location Image" class="max-w-full rounded-md lg:w-3/4">
    </div>
</div>
