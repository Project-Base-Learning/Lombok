<?php

namespace App\Filament\Pages\GoogleAnalytics;

use App\Models\GeneralSetting;
use Filament\Pages\Page;
use BezhanSalleh\FilamentGoogleAnalytics\Widgets;
use Illuminate\Support\Facades\Auth;

class GoogleAnalyticsPage extends Page
{
    protected static ?string $title = 'Google Analytics';
    protected static ?string $slug = 'google-analytics';
    protected static ?string $navigationIcon = 'heroicon-o-chart-bar';

    protected static string $view = 'filament.pages.my-custom-dashboard-page';

    public static function canAccess(): bool
    {
        return Auth::user()->can('page_GoogleAnalyticsPage') ? config('general-settings.features.google_analytics', false) : false;
    }

    protected function getHeaderWidgets(): array
    {
        return [
            Widgets\PageViewsWidget::class,
            Widgets\VisitorsWidget::class,
            Widgets\ActiveUsersOneDayWidget::class,
            Widgets\ActiveUsersSevenDayWidget::class,
            Widgets\ActiveUsersTwentyEightDayWidget::class,
            Widgets\SessionsWidget::class,
            Widgets\SessionsDurationWidget::class,
            Widgets\SessionsByCountryWidget::class,
            Widgets\SessionsByDeviceWidget::class,
            Widgets\MostVisitedPagesWidget::class,
            Widgets\TopReferrersListWidget::class,
        ];
    }
}
