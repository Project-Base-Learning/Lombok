<?php

namespace App\Filament\Forms;

use App\Models\Page;
use App\Models\Section;
use Filament\Forms\Components\Fieldset;
use Filament\Forms\Components\Group;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Section as ComponentsSection;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Get;

class NavigationFieldsForm
{
    public static function get(): array
    {
        return [
            ComponentsSection::make()
                ->schema([
                    Select::make('header')
                        ->options(Section::whereHas('type', fn ($query) => $query->where('type', 'Header'))->pluck('title', 'id')->toArray())
                        ->live(),
                    Select::make('footer')
                        ->options(Section::whereHas('type', fn ($query) => $query->where('type', 'Footer'))->pluck('title', 'id')->toArray())
                        ->live(),
                ])
                ->columns(1)
                ->columnSpan(1),
            Group::make()
                ->schema([
                    Fieldset::make('Search Page')
                        ->schema([
                            Select::make('search')
                                ->options(Page::pluck('title', 'id')->toArray()),
                        ])
                        ->columns(1),
                    Repeater::make('nav_items')
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
                            TextInput::make('link')
                                ->required()
                                ->url()
                                ->columnSpan(['lg' => 2])
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
