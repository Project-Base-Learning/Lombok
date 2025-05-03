<?php

namespace App\Models;

use App\Traits\Cacheable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

class GeneralSetting extends Model
{
    protected $table = 'general_settings';

    protected $fillable = [
        'site_name',
        'site_description',
        'site_logo',
        'site_favicon',
        'location',
        'contacts',
        'features',
        'user_features',
        'google_analytics',
        'chatbot_settings',
        'theme',
        'email_settings',
        'social_network',
        'more_configs',
    ];

    protected $casts = [
        'location' => 'array',
        'contacts' => 'array',
        'features' => 'array',
        'user_features' => 'array',
        'google_analytics' => 'array',
        'chatbot_settings' => 'array',
        'theme' => 'array',
        'email_settings' => 'array',
        'social_network' => 'array',
        'more_configs' => 'array',
    ];

    protected static function booted()
    {
        static::saving(function ($data) {
            if ($data->isDirty('site_logo') && Storage::disk('public')->exists($data->getOriginal('site_logo'))) {
                Storage::disk('public')->delete($data->getOriginal('site_logo'));
            }
            if ($data->isDirty('site_favicon') && Storage::disk('public')->exists($data->getOriginal('site_favicon'))) {
                Storage::disk('public')->delete($data->getOriginal('site_favicon'));
            }
            // Set env of google_property_id ...
            if ($data->isDirty('google_analytics') && empty($data->google_analytics['service-account-credentials']) && Storage::disk('analytics')->exists('service-account-credentials.json')) {
                Storage::disk('analytics')->delete('service-account-credentials.json');
            }
        });

        static::deleting(function ($data) {
            if (Storage::disk('public')->exists($data->site_logo)) {
                Storage::disk('public')->delete($data->site_logo);
            }
            if (Storage::disk('public')->exists($data->site_favicon)) {
                Storage::disk('public')->delete($data->site_favicon);
            }
            if (Storage::disk('analytics')->exists('service-account-credentials.json')) {
                Storage::disk('analytics')->delete('service-account-credentials.json');
            }
        });
    }
}
