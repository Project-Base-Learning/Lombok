<?php

namespace App\Providers;

use App\Models\GeneralSetting;
use App\Models\Page;
use App\Models\Section;
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
        Cache::rememberForever('general-settings', function () {
            return [];
        });

        $data = GeneralSetting::select([
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
            'google_analytics',
            'user_features',
        ])->first()->toArray();

        // app url
        Config::set('app.url', $data['site_url'] ?? env('APP_URL'));

        // navigation
        $navigation = $data['navigation'] ?? [];

        $navigation['header'] = $navigation['header'] ?? null;
        $navigation['footer'] = $navigation['footer'] ?? null;
        $navigation['search'] = $navigation['search'] ?? null;
        $navigation['home'] = $navigation['home'] ?? null;
        $navigation['nav_items'] = $navigation['nav_items'] ?? [];

        $navigation['header'] = Section::find($navigation['header'])?->toArray();
        $navigation['footer'] = Section::find($navigation['footer'])?->toArray();
        $navigation['search'] = Page::find($navigation['search'])?->toArray();
        $navigation['home'] = Page::find($navigation['home'])?->toArray();


        foreach ($navigation['nav_items'] as $key => $value) {
            if ($value['type'] == 'page') {
                $navigation['nav_items'][$key]['page'] = Page::find($value['page'])?->toArray();
            }
        }

        $data['navigation'] = $navigation;
        unset($navigation);

        // theme
        foreach ($data['theme'] as $keyColor => $color) {
            if ($color) {
                foreach ($color as $keyShade => $shade) {
                    $data['theme'][$keyColor][$keyShade] = str_replace(',', '', $shade);
                }
            }
        }

        // general-settings
        Config::set('general-settings', array_intersect_key($data, array_flip([
            'site_name',
            'site_description',
            'site_logo',
            'site_favicon',
            'site_dashboard_url',
            'location',
            'contacts',
            'theme',
            'social_network',
            'navigation',
            'features',
            'user_features',
        ])));

        // analytics.property_id
        $analytics = $data['google_analytics'] ?? [];
        Config::set('analytics.property_id', $analytics['google_property_id'] ?? null);
        Config::set('analytics.analytics_tag', $analytics['google_analytics_tag'] ?? null);
        unset($analytics);

        // mail
        $mail = $data['email_settings'] ?? [];
        Config::set([
            'mail.default' => $mail['default_email_provider'] ?? 'log',
            'mail.mailers.smtp.host' => $mail['smtp_host'] ?? '127.0.0.1',
            'mail.mailers.smtp.port' => $mail['smtp_port'] ?? 2525,
            'mail.mailers.smtp.encryption' => $mail['smtp_encryption'] ?? 'tls',
            'mail.mailers.smtp.username' => $mail['smtp_username'] ?? null,
            'mail.mailers.smtp.password' => $mail['smtp_password'] ?? null,
            'mail.mailers.smtp.timeout' => $mail['smtp_timeout'] ?? null,
            'mail.from.address' => $mail['email_from_address'] ?? 'hello@example.com',
            'mail.from.name' => $mail['email_from_name'] ?? 'Example',
        ]);
        unset($mail);

        unset($data);

        // dd(config('general-settings'));
    }
}
