<?php

namespace App\Filament\Pages\GeneralSettings;

use App\Filament\Forms\AnalyticsFieldsForm;
use App\Filament\Forms\ApplicationFieldsForm;
use App\Filament\Forms\EmailFieldsForm;
use App\Filament\Forms\SocialNetworkFieldsForm;
use App\Filament\Forms\TemplateFieldsForm;
use App\Helpers\EmailDataHelper;
use App\Models\GeneralSetting;
use Filament\Actions;
use Filament\Forms\Components\Tabs;
use Filament\Forms\Form;
use Filament\Notifications\Notification;
use Filament\Pages\Page;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;
use App\Mail\TestMail;
use App\Services\MailSettingsService;
use BezhanSalleh\FilamentShield\Traits\HasPageShield;

class GeneralSettingsPage extends Page
{
    use HasPageShield;

    protected static string $view = 'filament.pages.general-settings-page';

    protected static ?string $slug = 'general-settings';

    protected static ?string $title = 'General Settings';
    protected static ?string $navigationLabel = 'General Settings';

    protected static ?string $navigationGroup = 'Settings';
    protected static ?int $navigationSort  = 1;

    protected static ?string $navigationIcon = 'heroicon-o-cog';

    public ?array $data = [];

    public function mount(): void
    {
        $this->data = GeneralSetting::first()?->toArray() ?: [];

        // $this->data['seo_description'] = $this->data['seo_description'] ?? '';
        // $this->data['seo_preview'] = $this->data['seo_preview'] ?? '';
        // $this->data['theme_color'] = $this->data['theme_color'] ?? '';
        // $this->data['seo_metadata'] = $this->data['seo_metadata'] ?? [];
        // $this->data = EmailDataHelper::getEmailConfigFromDatabase($this->data);

        if (isset($this->data['site_logo']) && is_string($this->data['site_logo'])) {
            $this->data['site_logo'] = [
                'name' => $this->data['site_logo'],
            ];
        }

        if (isset($this->data['site_favicon']) && is_string($this->data['site_favicon'])) {
            $this->data['site_favicon'] = [
                'name' => $this->data['site_favicon'],
            ];
        }

        if (isset($this->data['google_analytics']['service-account-credentials']) && is_string($this->data['google_analytics']['service-account-credentials'])) {
            $this->data['google_analytics']['service-account-credentials'] = [
                'name' => $this->data['google_analytics']['service-account-credentials'],
            ];
        }

        $this->form->fill($this->data);
    }

    public function form(Form $form): Form
    {
        $arrTabs = [];

        $arrTabs[] = Tabs\Tab::make('Application')
            ->icon('heroicon-o-tv')
            ->schema(ApplicationFieldsForm::get())
            ->columns(3);

        $arrTabs[] = Tabs\Tab::make('Email')
            ->icon('heroicon-o-envelope')
            ->schema(EmailFieldsForm::get())
            ->columns(3);

        $arrTabs[] = Tabs\Tab::make('Social Network')
            ->icon('heroicon-o-heart')
            ->schema(SocialNetworkFieldsForm::get())
            ->columns(2)
            ->statePath('social_network');

        if (!empty($this->data['features']['analytics'])) {
            $arrTabs[] = Tabs\Tab::make('Analytics')
                ->icon('heroicon-o-globe-alt')
                ->schema(AnalyticsFieldsForm::get())
                ->columns(['lg' => 3])
                ->statePath('google_analytics');
        }

        $arrTabs[] = Tabs\Tab::make('Template')
            ->icon('heroicon-o-rectangle-group')
            ->schema(TemplateFieldsForm::get())
            ->columns(2)
            ->statePath('more_configs');

        return $form
            ->schema([
                Tabs::make('Tabs')
                    ->tabs($arrTabs),
            ])
            ->statePath('data');
    }

    protected function getFormActions(): array
    {
        return [
            Actions\Action::make('Save')
                ->color('primary')
                ->submit('Update'),
        ];
    }

    public function update(): void
    {
        $data = $this->form->getState();
        $data = EmailDataHelper::setEmailConfigToDatabase($data);
        $data = $this->clearVariables($data);

        GeneralSetting::updateOrCreate([], $data);
        Cache::forget('general_settings');

        $this->successNotification('Settings saved');
        redirect(request()?->header('Referer'));
    }

    private function clearVariables(array $data): array
    {
        unset(
            $data['seo_preview'],
            $data['seo_description'],
            $data['default_email_provider'],
            $data['smtp_host'],
            $data['smtp_port'],
            $data['smtp_encryption'],
            $data['smtp_timeout'],
            $data['smtp_username'],
            $data['smtp_password'],
            $data['mailgun_domain'],
            $data['mailgun_secret'],
            $data['mailgun_endpoint'],
            $data['postmark_token'],
            $data['amazon_ses_key'],
            $data['amazon_ses_secret'],
            $data['amazon_ses_region'],
            $data['mail_to'],
        );

        return $data;
    }

    public function sendTestMail(MailSettingsService $mailSettingsService): void
    {
        $data = $this->form->getState();
        $email = $data['mail_to'];

        $settings = $mailSettingsService->loadToConfig($data);

        try {
            Mail::mailer($settings['default_email_provider'])
                ->to($email)
                ->send(new TestMail([
                    'subject' => 'This is a test email to verify SMTP settings',
                    'body' => 'This is for testing email using smtp.',
                ]));
        } catch (\Exception $e) {
            $this->errorNotification('Email test error', $e->getMessage());

            return;
        }

        $this->successNotification('Email test success' . $email);
    }

    private function successNotification(string $title): void
    {
        Notification::make()
            ->title($title)
            ->success()
            ->send();
    }

    private function errorNotification(string $title, string $body): void
    {
        Log::error('[EMAIL] ' . $body);

        Notification::make()
            ->title($title)
            ->danger()
            ->body($body)
            ->send();
    }
}
