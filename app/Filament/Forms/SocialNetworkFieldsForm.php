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
        foreach (SocialNetworkEnum::options() as $value) {
            $fields[] = Fieldset::make($value)
                ->schema([
                    TextInput::make('label')
                        ->maxLength(255),
                    TextInput::make('url')
                        ->url(),
                ])
                ->columns(1)
                ->statePath($value);
        }

        return $fields;
    }
}
