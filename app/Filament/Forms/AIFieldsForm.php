<?php

namespace App\Filament\Forms;

use App\Enums\AIProviderEnum;
use Filament\Forms\Components\Group;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;

class AIFieldsForm
{
    public static function get(): array
    {
        return [
            Group::make()
                ->schema([
                    Select::make('provider')
                        ->preload()
                        ->required()
                        ->options(AIProviderEnum::options())
                ])
                ->columns(1)
                ->columnSpan(1),
            Group::make()
                ->schema([
                    TextInput::make('url')
                        ->label('Model url')
                        ->required(),
                    TextInput::make('api_key')
                        ->label('API key')
                        ->required(),
                ])
                ->columns(1)
                ->columnSpan(['lg' => 2])
        ];
    }
}
