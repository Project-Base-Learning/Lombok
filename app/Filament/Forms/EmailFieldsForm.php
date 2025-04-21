<?php

namespace App\Filament\Forms;

use App\Enums\EmailProviderEnum;
use Filament\Forms;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;

class EmailFieldsForm
{
    public static function get(): array
    {
        return [
            Forms\Components\Grid::make()
                ->schema([
                    Section::make([
                        Select::make('default_email_provider')
                            ->native(false)
                            ->allowHtml()
                            ->preload()
                            ->options(function () {
                                $options = [];
                                foreach (EmailProviderEnum::options() as $key => $value) {
                                    if (file_exists(public_path('image/filament/email-providers/' . strtolower($value) . '.svg'))) {
                                        $options[strtolower($value)] = '<div class="flex gap-2">' .
                                            ' <img src="' . asset('image/filament/email-providers/' . strtolower($value) . '.svg') . '"  class="h-5">'
                                            . $value
                                            . '</div>';
                                    } else {
                                        $options[strtolower($value)] = $value;
                                    }
                                }

                                return $options;
                            })
                            ->helperText('This is the email provider that will be used for all emails.')
                            ->live()
                            ->columnSpanFull(),
                        Forms\Components\Group::make()
                            ->schema([
                                TextInput::make('smtp_host')
                                    ->label('Host'),
                                TextInput::make('smtp_port')
                                    ->label('Port'),
                                Select::make('smtp_encryption')
                                    ->label('Encryption')
                                    ->options([
                                        'ssl' => 'SSL',
                                        'tls' => 'TLS',
                                    ]),
                                TextInput::make('smtp_timeout')
                                    ->label('Timeout'),
                                TextInput::make('smtp_username')
                                    ->label('Username'),
                                TextInput::make('smtp_password')
                                    ->label('Password'),
                            ])
                            ->columns(2)
                            ->visible(fn ($state) => $state['default_email_provider'] === 'smtp'),
                        Forms\Components\Group::make()
                            ->schema([
                                TextInput::make('mailgun_domain'),
                                TextInput::make('mailgun_secret'),
                                TextInput::make('mailgun_endpoint'),
                            ])
                            ->columns(1)
                            ->visible(fn ($state) => $state['default_email_provider'] === 'mailgun'),
                        Forms\Components\Group::make()
                            ->schema([
                                TextInput::make('postmark_token'),
                            ])
                            ->columns(1)
                            ->visible(fn ($state) => $state['default_email_provider'] === 'postmark'),
                        Forms\Components\Group::make()
                            ->schema([
                                TextInput::make('amazon_ses_key'),
                                TextInput::make('amazon_ses_secret'),
                                TextInput::make('amazon_ses_region')
                                    ->default('us-east-1'),
                            ])
                            ->columns(1)
                            ->visible(fn ($state) => $state['default_email_provider'] === 'ses'),
                    ]),
                ])
                ->columnSpan(['lg' => 2]),
            Forms\Components\Grid::make()
                ->schema([
                    Section::make([
                        TextInput::make('email_from_name')
                            ->helperText('This is the name that will be used as the "From" name for all emails.'),
                        TextInput::make('email_from_address')
                            ->helperText('This is the email address that will be used as the "From" email address for all emails.')
                            ->email(),
                    ]),
                    Section::make()
                        ->schema([
                            TextInput::make('mail_to')
                                ->hiddenLabel()
                                ->placeholder('Receiver email address')
                                ->reactive(),
                            Forms\Components\Actions::make([
                                Forms\Components\Actions\Action::make('Send Test Mail')
                                    ->disabled(fn ($state) => empty($state['mail_to']))
                                    ->action('sendTestMail')
                                    ->color('warning')
                                    ->icon('heroicon-o-paper-airplane'),
                            ])->fullWidth(),
                        ]),
                ])
                ->columnSpan(['lg' => 1]),
        ];
    }
}
