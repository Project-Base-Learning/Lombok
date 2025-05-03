<?php

namespace App\Providers;

use App\Models\GeneralSetting;
use App\Models\Page;
use App\Models\Section;
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
        $data = GeneralSetting::select([
            'site_name',
            'site_description',
            'site_logo',
            'site_favicon',
            'location',
            'contacts',
            'theme',
            'email_settings',
            'social_network',
            'navigation',
            'features',
            'google_analytics',
            'user_features',
            'chatbot_settings',
        ])->first()->toArray();

        // navigation
        $navigation = $data['navigation'] ?? [];

        $navigation['header'] = $navigation['header'] ?? null;
        $navigation['footer'] = $navigation['footer'] ?? null;
        $navigation['search'] = $navigation['search'] ?? null;
        $navigation['nav_items'] = $navigation['nav_items'] ?? [];

        $navigation['header'] = Section::find($navigation['header'])?->toArray();
        $navigation['footer'] = Section::find($navigation['footer'])?->toArray();
        $navigation['search'] = Page::find($navigation['search'])?->toArray();


        foreach ($navigation['nav_items'] as $key => $value) {
            if ($value['type'] == 'page') {
                $navigation['nav_items'][$key]['page'] = Page::find($value['page'])?->toArray();
            }
        }

        $data['navigation'] = $navigation;
        unset($navigation);

        // general-settings
        Config::set('general-settings', array_intersect_key($data, array_flip([
            'site_name',
            'site_description',
            'site_logo',
            'site_favicon',
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

        // chatbot (prism)
        $chatbot = $data['chatbot_settings'] ?? [];
        Config::set([
            'prism.provider.default' => $chatbot['provider'] ?? null,
            'prism.provider.model' => $chatbot['model'] ?? null,
            'prism.providers.openai.url' => $chatbot['openai']['url'] ?? 'https://api.openai.com/v1',
            'prism.providers.openai.api_key' => $chatbot['openai']['api_key'] ?? '',
            'prism.providers.openai.organization' => $chatbot['openai']['organization'] ?? null,
            'prism.providers.openai.project' => $chatbot['openai']['project'] ?? null,
            'prism.providers.anthropic.api_key' => $chatbot['anthropic']['api_key'] ?? '',
            'prism.providers.anthropic.version' => $chatbot['anthropic']['version'] ?? '2023-06-01',
            'prism.providers.anthropic.default_thinking_budget' => $chatbot['anthropic']['default_thinking_budget'] ?? 1024,
            'prism.providers.anthropic.anthropic_beta' => $chatbot['anthropic']['anthropic_beta'] ?? null,
            'prism.providers.ollama.url' => $chatbot['ollama']['url'] ?? 'http://localhost:11434',
            'prism.providers.mistral.api_key' => $chatbot['mistral']['api_key'] ?? '',
            'prism.providers.mistral.url' => $chatbot['mistral']['url'] ?? 'https://api.mistral.ai/v1',
            'prism.providers.groq.api_key' => $chatbot['groq']['api_key'] ?? '',
            'prism.providers.groq.url' => $chatbot['groq']['url'] ?? 'https://api.groq.com/openai/v1',
            'prism.providers.xai.api_key' => $chatbot['xai']['api_key'] ?? '',
            'prism.providers.xai.url' => $chatbot['xai']['url'] ?? 'https://api.x.ai/v1',
            'prism.providers.gemini.api_key' => $chatbot['gemini']['api_key'] ?? '',
            'prism.providers.gemini.url' => $chatbot['gemini']['url'] ?? 'https://generativelanguage.googleapis.com/v1beta/models',
            'prism.providers.deepseek.api_key' => $chatbot['deepseek']['api_key'] ?? '',
            'prism.providers.deepseek.url' => $chatbot['deepseek']['url'] ?? 'https://api.deepseek.com/v1',
            'prism.providers.voyageai.api_key' => $chatbot['voyageai']['api_key'] ?? '',
            'prism.providers.voyageai.url' => $chatbot['voyageai']['url'] ?? 'https://api.voyageai.com/v1',
        ]);
        unset($chatbot);

        unset($data);
    }
}
