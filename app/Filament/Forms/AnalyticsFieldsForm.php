<?php

namespace App\Filament\Forms;

use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Grid;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;

class AnalyticsFieldsForm
{
    public static function get(): array
    {
        return [
            Grid::make()
                ->schema([
                    TextInput::make('google_analytics_tag')
                        ->placeholder('G-ANALYTICS'),
                    TextInput::make('google_property_id')
                        ->disabled()
                        ->default(env("ANALYTICS_PROPERTY_ID"))
                        ->helperText('Configure this one at environment setting.'),
                ])
                ->columns(1)
                ->columnSpan(['lg' => 1]),
            FileUpload::make('service-account-credentials')
                ->disk('analytics')
                ->getUploadedFileNameForStorageUsing(fn () => 'service-account-credentials.json')
                ->acceptedFileTypes(['application/json'])
                ->columnSpan(['lg' => 2]),
        ];
    }
}
