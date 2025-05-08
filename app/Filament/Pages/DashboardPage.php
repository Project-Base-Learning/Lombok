<?php

namespace App\Filament\Pages;

use GeoSot\FilamentEnvEditor\Pages\Actions\OptimizeClearAction;

class DashboardPage extends \Filament\Pages\Dashboard
{
    public function getActions(): array
    {
        return [
            // OptimizeClearAction::make('optimize-clear')
        ];
    }
}
