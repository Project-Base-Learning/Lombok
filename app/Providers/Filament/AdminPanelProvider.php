<?php

namespace App\Providers\Filament;

use App\Filament\Pages\Auth\Login;
use App\Filament\Pages\Auth\EditProfile;
use App\Filament\Pages\GeneralSettings\GeneralSettingsPage;
use App\Filament\Widgets\OptimizeButton;
use App\Models\GeneralSetting;
use Filament\Http\Middleware\Authenticate;
use Filament\Http\Middleware\DisableBladeIconComponents;
use Filament\Http\Middleware\DispatchServingFilamentEvent;
use Filament\Navigation\MenuItem;
use Filament\Navigation\NavigationItem;
use Filament\Pages\Dashboard;
use Filament\Panel;
use Filament\PanelProvider;
use Filament\Support\Assets\Css;
use Filament\Support\Colors\Color;
use Filament\Support\Facades\FilamentAsset;
use Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse;
use Illuminate\Cookie\Middleware\EncryptCookies;
use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken;
use Illuminate\Routing\Middleware\SubstituteBindings;
use Illuminate\Session\Middleware\AuthenticateSession;
use Illuminate\Session\Middleware\StartSession;
use Illuminate\Support\Facades\Storage;
use Illuminate\View\Middleware\ShareErrorsFromSession;

class AdminPanelProvider extends PanelProvider
{
    protected $data;
    protected array $plugins;

    public function boot(): void
    {
        // FilamentAsset::register([
        //     Css::make('curator', __DIR__.'/../../resources/css/curator.css'),
        // ], 'awcodes/curator');
    }

    public function panel(Panel $panel): Panel
    {
        $this->data = GeneralSetting::first()?->toArray() ?: [];

        $this->plugins = [
            \BezhanSalleh\FilamentShield\FilamentShieldPlugin::make(),
            \GeoSot\FilamentEnvEditor\FilamentEnvEditorPlugin::make()
                ->navigationGroup('Settings')
                ->navigationLabel('Environment')
                ->navigationIcon('heroicon-o-command-line')
                ->navigationSort(2),
            \Awcodes\Curator\CuratorPlugin::make()
                ->label('Media')
                ->navigationIcon('heroicon-o-photo')
                ->navigationGroup('Article')
                ->navigationSort(5)
                ->navigationCountBadge(false)
                ->registerNavigation(true)
                ->defaultListView('grid')
                ->resource(\Awcodes\Curator\Resources\MediaResource::class)
        ];

        if ($this->data['features']['analytics'] && $this->data['google_analytics_tag']) {
            array_push($this->plugins, \BezhanSalleh\FilamentGoogleAnalytics\FilamentGoogleAnalyticsPlugin::make());
        }

        return $panel
            ->default()
            ->favicon(Storage::url($this->data['site_favicon'] ?? ''))
            ->brandName($this->data['site_name'] ?? env('APP_NAME'))
            ->id('dashboard')
            ->path('admin')
            ->login(Login::class)
            ->passwordReset()
            ->emailVerification()
            ->profile(EditProfile::class)
            ->colors([
                'primary' => Color::Amber,
            ])
            ->sidebarCollapsibleOnDesktop()
            ->userMenuItems([
                MenuItem::make()
                    ->label('Dashboard')
                    ->url('/admin')
                    ->icon('heroicon-o-home'),
            ])
            ->discoverResources(in: app_path('Filament/Resources'), for: 'App\\Filament\\Resources')
            ->discoverPages(in: app_path('Filament/Pages'), for: 'App\\Filament\\Pages')
            ->pages([
                Dashboard::class,
                GeneralSettingsPage::class,
            ])
            ->widgets([
                OptimizeButton::class,
            ])
            ->navigationItems([
                NavigationItem::make('Go to web')
                    ->url('/', shouldOpenInNewTab: true)
                    ->icon('heroicon-o-globe-alt')
                    ->sort(-1),
            ])
            ->navigationGroups([
                'Settings',
                'Filament Shield',
                'Accounts',
                'Article',
                'Sponsors',
            ])
            ->middleware([
                EncryptCookies::class,
                AddQueuedCookiesToResponse::class,
                StartSession::class,
                AuthenticateSession::class,
                ShareErrorsFromSession::class,
                VerifyCsrfToken::class,
                SubstituteBindings::class,
                DisableBladeIconComponents::class,
                DispatchServingFilamentEvent::class,
            ])
            ->authMiddleware([
                Authenticate::class,
            ])
            ->plugins($this->plugins);
    }
}
