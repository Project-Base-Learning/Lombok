<?php

namespace App\Services;

use App\Models\GeneralSetting;
use Illuminate\Support\Facades\Cache;

class GeneralSettingsService
{
    public function __construct(
        public GeneralSetting $generalSetting
    ) {}

    public function get(): ?GeneralSetting
    {
        return Cache::remember('general_settings', 60, callback: function () {
            return $this->generalSetting->first();
        });
    }
}
