<div class="px-4 sm:px-10 md:px-20 lg:px-40 py-20 container-circle" data-aos="fade-up">
    <!-- Section Title -->
    <div class="flex justify-center mb-8">
        <h1 class="text-4xl font-bold">Team Members</h1>
    </div>

    @php
        $members = Storage::disk('public')->allFiles('members');
        foreach ($members as $key => $item) {
            $member['path'] = $item;
            $member['info'] = Str::substr($item, 8);
            $member['info'] = explode('.', $member['info'])[1];
            $member['info'] = explode('-', $member['info']);
            $members[$key] = $member;
        }
    @endphp

    <!-- Grid of Circle Images with Names and Job Titles -->
    <div class="grid grid-cols-3 md:grid-cols-3 lg:grid-cols-3 gap-4 md:gap-6 lg:gap-8 justify-items-center">
        @foreach ($members as $member)
            <div class="flex flex-col items-center justify-center gap-2">
                <div class="w-20 h-20 sm:w-24 sm:h-24 md:w-28 md:h-28 lg:w-32 lg:h-32 xl:w-64 xl:h-64 overflow-hidden rounded-full">
                    <img src="{{ Storage::url($member['path']) }}" alt="{{ $member['info'][0] }}" class="object-cover w-full h-full">
                </div>
                <div class="mt-1 text-center">
                    <h3 class="font-bold text-xs sm:text-sm md:text-base lg:text-lg">{{ $member['info'][1] }}</h3>
                    <p class="text-xs sm:text-sm text-gray-600">{{ $member['info'][0] }}</p>
                </div>
            </div>
        @endforeach
    </div>
</div>
