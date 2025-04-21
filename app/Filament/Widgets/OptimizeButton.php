<?php

namespace App\Filament\Widgets;

use Filament\Widgets\Widget;
use Filament\Notifications\Notification;
use Illuminate\Support\Facades\Artisan;

class OptimizeButton extends Widget
{
    protected static string $view = 'filament.widgets.optimize-button';

    public function runOptimize()
    {
        Artisan::call('optimize');

        Notification::make()
            ->title('Artisan Optimize Berhasil!')
            ->success()
            ->send();
    }
}
