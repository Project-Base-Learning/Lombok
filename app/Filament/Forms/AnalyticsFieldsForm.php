<?php

namespace App\Filament\Forms;

use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;

class AnalyticsFieldsForm
{
    public static function get(): array
    {
        return [
            TextInput::make('google_analytics_tag')
                ->placeholder('G-ANALYTICS')
                ->helperText('Also configure your google analytics property id in environment setting.'),
            // Textarea::make('posthog_html_snippet')
            //     ->placeholder('<script src=\'https://app.posthog.com/123456789.js\'></script>'),
        ];
    }
}
