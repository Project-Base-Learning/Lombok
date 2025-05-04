<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\TestController;

$data = config('general-settings.navigation');

Route::get('/', [HomeController::class, 'index'])->name('/');

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
