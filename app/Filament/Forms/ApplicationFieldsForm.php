<?php

namespace App\Filament\Forms;

use Filament\Forms\Components\ColorPicker;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Grid;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;

class ApplicationFieldsForm
{
    public static function get(): array
    {
        return [
            Grid::make()
                ->schema([
                    Section::make()
                        ->schema([
                            TextInput::make('site_name')
                                ->autofocus()
                                ->columnSpanFull(),
                            Textarea::make('site_description')
                                ->columnSpanFull(),
                            Grid::make()
                                ->schema([
                                    FileUpload::make('site_logo')
                                        ->image()
                                        ->directory('assets')
                                        ->visibility('public')
                                        ->moveFiles()
                                        ->imageEditor()
                                        ->getUploadedFileNameForStorageUsing(fn () => 'site_logo.png')
                                        ->columnSpan(['default' => 1, 'lg' => 2]),
                                    FileUpload::make('site_favicon')
                                        ->image()
                                        ->directory('assets')
                                        ->visibility('public')
                                        ->moveFiles()
                                        ->getUploadedFileNameForStorageUsing(fn () => 'site_favicon.ico')
                                        ->acceptedFileTypes(['image/x-icon', 'image/vnd.microsoft.icon'])
                                        ->columnSpan(['default' => 1, 'lg' => 2]),
                                ])
                                ->columns(2),
                        ])
                ])
                ->columnSpan(['lg' => 2]),
            Grid::make()
                ->schema([
                    Section::make()
                        ->schema([
                            TextInput::make('support_email')
                                ->prefixIcon('heroicon-o-envelope'),
                            TextInput::make('support_phone')
                                ->prefixIcon('heroicon-o-phone'),
                            ColorPicker::make('theme_color')
                                ->prefixIcon('heroicon-o-swatch'),
                        ]),
                    Section::make('Features')
                        ->description('Features you want to have.')
                        ->schema([
                            Toggle::make('analytics'),
                            Toggle::make('sponsors'),
                            Toggle::make('testimonials')
                                ->disabled(),
                            Toggle::make('ticketings')
                                ->disabled(),
                            Toggle::make('views')
                                ->disabled(),
                        ])
                        ->statePath('features'),
                    Section::make('User Features')
                        ->description('Features for User (Visitor).')
                        ->schema([
                            Toggle::make('chatbot')
                                ->disabled(),
                            Toggle::make('favorites')
                                ->disabled(),
                            Toggle::make('login')
                                ->disabled(),
                            Toggle::make('reviews')
                                ->disabled(),
                        ])
                        ->statePath('user_features'),
                ])
                ->columnSpan(['lg' => 1]),
        ];
    }
}
