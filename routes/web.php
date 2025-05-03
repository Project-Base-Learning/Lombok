<?php

// use Illuminate\Support\Facades\Route;
// use App\Http\Controllers\HomeController;
// use App\Http\Controllers\SearchController;
// use App\Models\Page;

// $data['navigation'] = Page::whereNotNull('published_at')->get();

// Route::get('/', fn () => redirect(route('home')));
// foreach ($data['navigation'] as $item) {
//     Route::get('/'.$item->slug, [HomeController::class, 'index'])->name($item->slug);
// }

// Route::get('/{category}/{slug}', [HomeController::class, 'detail'])->name('detail');

// Route::controller(SearchController::class)->group(function () {
//     Route::get('/search', 'index')->name('search');
// });
