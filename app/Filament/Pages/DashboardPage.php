<?php

namespace App\Filament\Pages;

use App\Filament\Actions\OptimizeAction;

class DashboardPage extends \Filament\Pages\Dashboard
{
    public function getActions(): array
    {
        return [
            OptimizeAction::make('optimize')
        ];
    }
}
