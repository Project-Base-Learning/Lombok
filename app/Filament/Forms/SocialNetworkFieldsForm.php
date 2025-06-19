<?php

namespace App\Filament\Forms;

use App\Enums\SocialNetworkEnum;
use Filament\Forms\Components\Fieldset;
use Filament\Forms\Components\TextInput;

class SocialNetworkFieldsForm
{
    public static function get(): array
    {
        $fields = [];
        foreach (SocialNetworkEnum::options() as $key => $value) {
            $fields[] = Fieldset::make(strtolower($value))
                ->schema([
                    TextInput::make('label')
                        ->maxLength(255),
                    TextInput::make('url')
                        ->url(),
                ])
                ->columns(1)
                ->columnSpan(1)
                ->statePath(strtolower($value));
        }

        return $fields;
    }
}
