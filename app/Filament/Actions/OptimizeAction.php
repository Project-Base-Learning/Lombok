<?php

namespace App\Filament\Actions;

use Filament\Actions\Action;
use Illuminate\Foundation\Console\OptimizeCommand;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\HtmlString;
use Illuminate\Support\Str;

class OptimizeAction extends Action
{
    public static function getDefaultName(): ?string
    {
        return 'optimize';
    }

    protected function setUp(): void
    {
        parent::setUp();

        $this->outlined();
        $this->label(fn (): string => 'Optimize');
        $this->tooltip(fn (): string => 'php artisan optimize');
        $this->action(function () {
            $result = Artisan::call(OptimizeCommand::class);

            $output = Str::replace('..................................................', '.', Artisan::output());

            $this->successNotificationTitle(new HtmlString("<pre>$output</div>"));
            $this->failureNotificationTitle(new HtmlString("<pre>$output</div>"));
            0 === $result ? $this->success() : $this->failure();
        });
    }
}
