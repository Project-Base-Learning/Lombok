<?php

namespace App\Filament\Forms;

use App\Enums\SocialNetworkEnum;
use Filament\Forms\Components\TextInput;

class SocialNetworkFieldsForm
{
    public static function get(): array
    {
        $fields = [];
        foreach (SocialNetworkEnum::options() as $key => $value) {
            $fields[] = TextInput::make($key)
                ->label(ucfirst(strtolower($value)));
        }

        return $fields;
    }
}
