<button data-modal-target="filterModal" data-modal-toggle="filterModal" class="flex items-center gap-2 px-4 py-2 text-white transition-transform transform rounded-lg bg-red hover:scale-105">
    <img src="{{ asset("image/filter-white.svg") }}" alt="Filter Icon" class="w-6 h-6">
    <span class="font-semibold">Filter</span>
</button>

<div id="filterModal" tabindex="-1" aria-hidden="true" class="fixed inset-0 z-50 items-center justify-center hidden w-full h-full bg-black bg-opacity-50">
    <div class="relative w-1/3 p-6 bg-white rounded-lg shadow-lg">
        <!-- Modal Header -->
        <div class="flex items-center justify-between pb-4 border-b">
            <h2 class="text-xl font-bold">Filter Options</h2>
            <button type="button" data-modal-hide="filterModal"
                class="text-gray-400 hover:text-gray-600 focus:outline-none">
                <svg class="w-6 h-6" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12"></path>
                </svg>
            </button>
        </div>
        <!-- Modal Content -->
        <div class="py-4">
            <p class="mb-4 text-sm text-gray-600">Select the filter criteria for your articles:</p>
            <!-- Example Filters -->
            <div class="space-y-4">
                <div>
                    <label class="block text-sm font-medium">Date Range</label>
                    <input type="date" class="w-full border-gray-300 rounded-md shadow-sm">
                </div>
                <div>
                    <label class="block text-sm font-medium">Category</label>
                    <select class="w-full border-gray-300 rounded-md shadow-sm">
                        <option value="">All</option>
                        <option value="news">News</option>
                        <option value="updates">Updates</option>
                    </select>
                </div>
            </div>
        </div>
        <!-- Modal Footer -->
        <div class="flex justify-end mt-4">
            <button type="button" data-modal-hide="filterModal"
                class="px-4 py-2 mr-2 text-gray-800 bg-gray-200 rounded-lg">Cancel</button>
            <button type="button" class="px-4 py-2 text-white rounded-lg bg-red">Apply Filters</button>
        </div>
    </div>
</div>
