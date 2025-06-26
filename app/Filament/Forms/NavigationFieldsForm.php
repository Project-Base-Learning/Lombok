<?php

namespace App\Filament\Forms;

use App\Models\Page;
use App\Models\Section;
use Filament\Forms\Components\Group;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Get;

class NavigationFieldsForm
{
    public static function get(): array
    {
        return [
            Group::make()
                ->schema([
                    Select::make('home')
                        ->label('Homepage')
                        ->required()
                        ->live()
                        ->different('search')
                        ->options(Page::pluck('title', 'id')->toArray()),
                    Select::make('search')
                        ->label('Search page')
                        ->live()
                        ->different('home')
                        ->options(Page::pluck('title', 'id')->toArray()),
                    Select::make('header')
                        ->label('Header section')
                        ->options(Section::whereHas('type', fn ($query) => $query->where('type', 'Header'))->pluck('title', 'id')->toArray())
                        ->live(),
                    Select::make('footer')
                        ->label('Footer section')
                        ->options(Section::whereHas('type', fn ($query) => $query->where('type', 'Footer'))->pluck('title', 'id')->toArray())
                        ->live(),
                ])
                ->columns(1)
                ->columnSpan(1),
            Group::make()
                ->schema([
                    Repeater::make('nav_items')
                        ->label('Navigation items')
                        ->schema([
                            Select::make('type')
                                ->options([
                                    'page' => 'page',
                                    'link' => 'link'
                                ])
                                ->required()
                                ->live()
                                ->columnSpan(['lg' => 1]),
                            Select::make('page')
                                ->required()
                                ->options(Page::pluck('title', 'id')->toArray())
                                ->columnSpan(['lg' => 2])
                                ->visible(fn (Get $get) => $get('type') == 'page'),
                            Group::make()
                                ->schema([
                                    TextInput::make('label')
                                        ->required()
                                        ->maxLength(255),
                                    TextInput::make('url')
                                        ->required()
                                        ->url(),
                                ])
                                ->columnSpan(['lg' => 2])
                                ->statePath('link')
                                ->visible(fn (Get $get) => $get('type') == 'link'),
                        ])
                        ->columns(['lg' => 3])
                        ->reorderable(true)
                        ->reorderableWithButtons(true)
                        ->reorderableWithDragAndDrop(true)
                        ->visible(fn (Get $get) => $get('header') || $get('footer')),
                ])
                ->columns(1)
                ->columnSpan(['lg' => 2])
        ];
    }
}
