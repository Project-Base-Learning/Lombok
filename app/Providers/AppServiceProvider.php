<?php

namespace App\Providers;

use App\Models\GeneralSetting;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        // general-settings
        $data = GeneralSetting::select([
            'site_name',
            'site_description',
            'site_logo',
            'site_favicon',
            'location',
            'contacts',
            'features',
            'user_features',
            'social_network',
            'more_configs',
        ])->first()->toArray();
        Config::set('general-settings', $data);

        // analytics.property_id
        $data = GeneralSetting::first()->value('google_analytics');
        Config::set('analytics.property_id', $data['google_property_id'] ?? null);

        // mail
        $data = GeneralSetting::first()->value('email_settings');
        Config::set([
            'mail.default' => $data['default_email_provider'] ?? 'log',
            'mail.mailers.smtp.host' => $data['smtp_host'] ?? '127.0.0.1',
            'mail.mailers.smtp.port' => $data['smtp_port'] ?? 2525,
            'mail.mailers.smtp.encryption' => $data['smtp_encryption'] ?? 'tls',
            'mail.mailers.smtp.username' => $data['smtp_username'] ?? null,
            'mail.mailers.smtp.password' => $data['smtp_password'] ?? null,
            'mail.mailers.smtp.timeout' => $data['smtp_timeout'] ?? null,
            'mail.from.address' => $data['email_from_address'] ?? 'hello@example.com',
            'mail.from.name' => $data['email_from_name'] ?? 'Example',
        ]);
    }
}
