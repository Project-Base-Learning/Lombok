<?php

namespace App\Providers;

use App\Models\GeneralSetting;
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

        // chatbot (prism)
        $data = GeneralSetting::first()->value('chatbot_settings');
        Config::set([
            'prism.provider.default' => $data['provider'] ?? null,
            'prism.provider.model' => $data['model'] ?? null,
            'prism.providers.openai.url' => $data['openai']['url'] ?? 'https://api.openai.com/v1',
            'prism.providers.openai.api_key' => $data['openai']['api_key'] ?? '',
            'prism.providers.openai.organization' => $data['openai']['organization'] ?? null,
            'prism.providers.openai.project' => $data['openai']['project'] ?? null,
            'prism.providers.anthropic.api_key' => $data['anthropic']['api_key'] ?? '',
            'prism.providers.anthropic.version' => $data['anthropic']['version'] ?? '2023-06-01',
            'prism.providers.anthropic.default_thinking_budget' => $data['anthropic']['default_thinking_budget'] ?? 1024,
            'prism.providers.anthropic.anthropic_beta' => $data['anthropic']['anthropic_beta'] ?? null,
            'prism.providers.ollama.url' => $data['ollama']['url'] ?? 'http://localhost:11434',
            'prism.providers.mistral.api_key' => $data['mistral']['api_key'] ?? '',
            'prism.providers.mistral.url' => $data['mistral']['url'] ?? 'https://api.mistral.ai/v1',
            'prism.providers.groq.api_key' => $data['groq']['api_key'] ?? '',
            'prism.providers.groq.url' => $data['groq']['url'] ?? 'https://api.groq.com/openai/v1',
            'prism.providers.xai.api_key' => $data['xai']['api_key'] ?? '',
            'prism.providers.xai.url' => $data['xai']['url'] ?? 'https://api.x.ai/v1',
            'prism.providers.gemini.api_key' => $data['gemini']['api_key'] ?? '',
            'prism.providers.gemini.url' => $data['gemini']['url'] ?? 'https://generativelanguage.googleapis.com/v1beta/models',
            'prism.providers.deepseek.api_key' => $data['deepseek']['api_key'] ?? '',
            'prism.providers.deepseek.url' => $data['deepseek']['url'] ?? 'https://api.deepseek.com/v1',
            'prism.providers.voyageai.api_key' => $data['voyageai']['api_key'] ?? '',
            'prism.providers.voyageai.url' => $data['voyageai']['url'] ?? 'https://api.voyageai.com/v1',
        ]);
    }
}
