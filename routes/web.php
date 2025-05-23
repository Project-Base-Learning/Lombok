<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\TestController;

$data = config('general-settings.navigation');

Route::get('/', [HomeController::class, 'index'])->name('/');

Route::get('/test-landing', function () {
    return view('pages.landing');
})->name('test.landing');

Route::get('/berita', function () {
    return view('pages.berita');
})->name('berita');

Route::get('/publikasi', function () {
    return view('pages.publikasi');
})->name('publikasi');

Route::get('/program', function () {
    return view('pages.program');
})->name('program');

Route::get('/about', function () {
    return view('pages.about');
})->name('about');


Route::get('/contact', function () {
    return view('pages.contact');
})->name('contact');

Route::get('/berita_detail', function () {
    return view('pages.berita_detail');
})->name('berita_detail');

if ($data['home']) {
    Route::get('/'.$data['home']['slug'], [HomeController::class, 'index'])->name($data['home']['slug']);
}

if ($data['search']) {
    Route::get('/'.$data['search']['slug'], [HomeController::class, 'index'])->name($data['search']['slug']);
}

foreach ($data['nav_items'] as $key => $value) {
    if($value['type'] == 'page') {
        Route::get('/'.$value['page']['slug'], [HomeController::class, 'index'])->name($value['page']['slug']);
    }
}

Route::get('/{category}/{slug}', [HomeController::class, 'detail'])->name('detail');

// Check if double nav item

Route::get('/test', [TestController::class, 'index']);

// sadasdasdadas
