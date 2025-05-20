<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\TestController;

$data = config('general-settings.navigation');

Route::get('', [HomeController::class, 'index'])->name('/');

if ($data['home']) {
    Route::get('/'.$data['home']['slug'], [HomeController::class, 'index'])->name($data['home']['slug']);
}

if ($data['search']) {
    Route::get('/'.$data['search']['slug'], [HomeController::class, 'search'])->name($data['search']['slug']);
}

foreach ($data['nav_items'] as $key => $value) {
    if($value['type'] == 'page') {
        Route::get('/'.$value['page']['slug'], [HomeController::class, 'index'])->name($value['page']['slug']);
    }
}

Route::post('/mail', [HomeController::class, 'mail'])->name('mail');

Route::get('/detail/{category}/{slug}', [HomeController::class, 'detail'])->name('detail');

// Testing routes
if (config('app.debug')) {
    Route::get('/test-landing', function () {
        return view('tests.landing');
    })->name('test.landing');

    Route::get('/berita', function () {
        return view('tests.berita');
    })->name('berita');

    Route::get('/publikasi', function () {
        return view('tests.publikasi');
    })->name('publikasi');

    Route::get('/program', function () {
        return view('tests.program');
    })->name('program');

    Route::get('/about', function () {
        return view('tests.about');
    })->name('about');

    // Route::get('/contact', function () {
    //     return view('tests.contact');
    // })->name('contact');
}
