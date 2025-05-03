<?php

namespace App\Filament\Forms;

use Filament\Forms\Components\Fieldset;
use Filament\Forms\Components\Group;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Get;
use Prism\Prism\Enums\Provider;

class ChatbotFieldsForm
{
    public static function get(): array
    {
        return [
            Section::make('Provider')
                ->schema([
                    Select::make('provider')
                        ->options(Provider::class)
                        ->required()
                        ->live(),
                    TextInput::make('model'),
                ])
                ->columnSpan(1),
            Group::make()
                ->schema([
                    Fieldset::make('openai')
                        ->schema([
                            TextInput::make('url')
                                ->default('https://api.openai.com/v1'),
                            TextInput::make('api_key')
                                ->required(),
                            TextInput::make('organization'),
                            TextInput::make('project'),
                        ])
                        ->statePath('openai')
                        ->visible(fn (Get $get) => $get('provider') === Provider::OpenAI->value),
                    Fieldset::make('anthropic')
                        ->schema([
                            TextInput::make('api_key')
                                ->required(),
                            TextInput::make('version')
                                ->default('2023-06-01'),
                            TextInput::make('default_thinking_budget')
                                ->default(1024)
                                ->numeric(),
                            TextInput::make('anthropic_beta')
                                ->helperText('Include beta strings as a comma separated list'),
                        ])
                        ->statePath('anthropic')
                        ->visible(fn (Get $get) => $get('provider') === Provider::Anthropic->value),
                    Fieldset::make('ollama')
                        ->schema([
                            TextInput::make('url')
                                ->default('http://localhost:11434'),
                        ])
                        ->statePath('ollama')
                        ->visible(fn (Get $get) => $get('provider') === Provider::Ollama->value),
                    Fieldset::make('mistral')
                        ->schema([
                            TextInput::make('api_key')
                                ->required(),
                            TextInput::make('url')
                                ->default('https://api.mistral.ai/v1'),
                        ])
                        ->statePath('mistral')
                        ->visible(fn (Get $get) => $get('provider') === Provider::Mistral->value),
                    Fieldset::make('groq')
                        ->schema([
                            TextInput::make('api_key')
                                ->required(),
                            TextInput::make('url')
                                ->default('https://api.groq.com/openai/v1'),
                        ])
                        ->statePath('groq')
                        ->visible(fn (Get $get) => $get('provider') === Provider::Groq->value),
                    Fieldset::make('xai')
                        ->schema([
                            TextInput::make('api_key')
                                ->required(),
                            TextInput::make('url')
                                ->default('https://api.x.ai/v1'),
                        ])
                        ->statePath('xai')
                        ->visible(fn (Get $get) => $get('provider') === Provider::XAI->value),
                    Fieldset::make('gemini')
                        ->schema([
                            TextInput::make('api_key')
                                ->required(),
                            TextInput::make('url')
                                ->default('https://generativelanguage.googleapis.com/v1beta/models'),
                        ])
                        ->statePath('gemini')
                        ->visible(fn (Get $get) => $get('provider') === Provider::Gemini->value),
                    Fieldset::make('deepseek')
                        ->schema([
                            TextInput::make('api_key')
                                ->required(),
                            TextInput::make('url')
                                ->default('https://api.deepseek.com/v1'),
                        ])
                        ->statePath('deepseek')
                        ->visible(fn (Get $get) => $get('provider') === Provider::DeepSeek->value),
                    Fieldset::make('voyageai')
                        ->schema([
                            TextInput::make('api_key')
                                ->required(),
                            TextInput::make('url')
                                ->default('https://api.voyageai.com/v1'),
                        ])
                        ->statePath('voyageai')
                        ->visible(fn (Get $get) => $get('provider') === Provider::VoyageAI->value),
                    Textarea::make('prompt'),
                ])
                ->columnSpan(['lg' => 2])
        ];
    }
}
