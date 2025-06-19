<?php

namespace App\Filament\Resources;

use Illuminate\Support\Facades\Auth;

class MediaResource extends \Awcodes\Curator\Resources\MediaResource
{
    public static function canAccess(): bool
    {
        return Auth::user()->can('view_media') ? true : false;
    }
}
