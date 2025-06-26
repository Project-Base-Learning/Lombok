<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;
use Illuminate\Foundation\Console\OptimizeCommand;
use Illuminate\Support\Facades\Artisan;

class GeneralSetting extends Model
{
    protected $table = 'general_settings';

    protected $fillable = [
        'site_name',
        'site_description',
        'site_logo',
        'site_favicon',
        'site_url',
        'site_dashboard_url',
        'location',
        'contacts',
        'theme',
        'email_settings',
        'social_network',
        'navigation',
        'features',
        'ai',
        'google_analytics',
        'user_features',
    ];

    protected $casts = [
        'location' => 'array',
        'contacts' => 'array',
        'theme' => 'array',
        'email_settings' => 'array',
        'social_network' => 'array',
        'navigation' => 'array',
        'features' => 'array',
        'ai' => 'array',
        'google_analytics' => 'array',
        'user_features' => 'array',
        'chatbot_settings' => 'array',
    ];

    protected static function booted()
    {
        static::saving(function ($data) {
            if ($data->features['ai'] == false) {
                $originalData = $data->ai ?? [];

                $resetData = [];
                foreach ($originalData as $key => $value) {
                    $resetData[$key] = null;
                }

                $data->ai = $resetData;
            }

            if ($data->features['google_analytics'] == false) {
                if (Storage::disk('analytics')->exists('service-account-credentials.json')) {
                    Storage::disk('analytics')->delete('service-account-credentials.json');
                }

                $originalData = $data->google_analytics ?? [];

                $resetData = [];
                foreach ($originalData as $key => $value) {
                    $resetData[$key] = null;
                }

                $data->google_analytics = $resetData;
            }
        });
    }

}
