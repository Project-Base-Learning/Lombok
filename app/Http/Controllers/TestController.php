<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TestController extends Controller
{
    public function index()
    {
        $data = config('general-settings');
        return view('tests.testing-page', compact('data'));
    }
}
