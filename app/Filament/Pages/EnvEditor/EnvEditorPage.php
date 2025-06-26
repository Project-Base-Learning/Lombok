<?php

namespace App\Filament\Pages\EnvEditor;

use App\Filament\Actions\OptimizeAction;
use BezhanSalleh\FilamentShield\Traits\HasPageShield;
use GeoSot\FilamentEnvEditor\Pages\ViewEnv as BaseViewEnvEditor;

class EnvEditorPage extends BaseViewEnvEditor
{
    use HasPageShield;

    protected function getHeaderActions(): array
    {
        return [
            OptimizeAction::make('optimize')
        ];
    }
}
