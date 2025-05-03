<?php

namespace App\Http\Controllers;

use App\Models\GeneralSetting;
use App\Models\Page;
use App\Models\Section;

abstract class Controller
{
    protected function page(String $slug)
    {
        // Web Data
        $data = GeneralSetting::first()?->toArray() ?: [];
        // if (!empty($data['more_configs']['navigation'])) {
        //     $data['more_configs']['navigation'] = Section::where('id', $data['more_configs']['navigation'])->first();
        // }
        // if (!empty($data['more_configs']['footer'])) {
        //     $data['more_configs']['footer'] = Section::where('id', $data['more_configs']['footer'])->first();
        // }
        // // Navigation & Page
        // $data['navigation'] = Page::whereNotNull('published_at')->get();
        // foreach ($data['navigation'] as $page) {
        //     if ($page->slug == $slug) {
        //         $data['page'] = $page;
        //     }
        // }
        return $data;
    }
}
