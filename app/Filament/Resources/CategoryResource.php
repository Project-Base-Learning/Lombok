<?php

namespace App\Filament\Resources;

use App\Enums\TypeFieldEnum;
use App\Enums\TypeTextEnum;
use App\Filament\Resources\CategoryResource\Pages;
use App\Models\Category;
use Dotswan\FilamentCodeEditor\Fields\CodeEditor;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Riodwanto\FilamentAceEditor\AceEditor;

class CategoryResource extends Resource
{
    protected static ?string $model = Category::class;

    protected static ?string $navigationGroup = 'Article';
    protected static ?int $navigationSort  = 4;

    protected static ?string $navigationIcon = 'heroicon-o-tag';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make()
                    ->schema([
                        Forms\Components\TextInput::make('category_name')
                            ->required()
                            ->maxLength(255),
                        Forms\Components\TextInput::make('layout_detail_path')
                            ->required()
                            ->maxLength(255),
                        Forms\Components\Toggle::make('default')
                            ->default(false),
                    ])
                    ->columns(2),
                Forms\Components\Repeater::make('fields')
                    ->schema([
                        Forms\Components\Section::make('Field')
                            ->schema([
                                Forms\Components\Select::make('field')
                                    ->required()
                                    ->live()
                                    ->options(TypeFieldEnum::options()),
                                Forms\Components\TextInput::make('name')
                                    ->required()
                                    ->maxLength(255),
                                Forms\Components\TextInput::make('label')
                                    ->maxLength(255),
                                Forms\Components\TextInput::make('placeholder')
                                    ->maxLength(255),
                                Forms\Components\TextInput::make('column_span')
                                    ->default(1)
                                    ->minValue(1)
                                    ->maxValue(2)
                                    ->numeric(),
                                Forms\Components\Toggle::make('required')
                                    ->default(false),
                            ])
                            ->columns(2)
                            ->columnSpan(['lg' => 2]),
                        Forms\Components\Section::make('Attributes')
                            ->visible(fn ($record, $get): bool => $get('field') ?? false)
                            ->schema([
                                // Text
                                Forms\Components\TextInput::make('rules')
                                    ->visible(fn ($record, $get): bool => $get('field') == TypeFieldEnum::Text->value)
                                    ->maxLength(255),
                                Forms\Components\Select::make('type')
                                    ->visible(fn ($record, $get): bool => $get('field') == TypeFieldEnum::Text->value)
                                    ->options(TypeTextEnum::options()),
                                // Select
                                Forms\Components\KeyValue::make('options')
                                    ->visible(fn ($record, $get): bool => $get('field') == TypeFieldEnum::Select->value),
                                // Datetime
                                Forms\Components\Toggle::make('seconds')
                                    ->visible(fn ($record, $get): bool => $get('field') == TypeFieldEnum::Datetime->value)
                                    ->default(false),
                                Forms\Components\TextInput::make('format')
                                    ->visible(fn ($record, $get): bool => $get('field') == TypeFieldEnum::Datetime->value)
                                    ->maxLength(255),
                                // Boolean
                                //
                                // Textarea
                                Forms\Components\TextInput::make('rows')
                                    ->visible(fn ($record, $get): bool => $get('field') == TypeFieldEnum::Textarea->value)
                                    ->minValue(1)
                                    ->numeric(),
                                // Section
                                //
                            ])
                            ->columns(1)
                            ->columnSpan(['lg' => 1]),
                    ])
                    ->columns(3)
                    ->cloneable()
                    ->collapsible()
                    ->reorderableWithButtons()
                    ->reorderableWithDragAndDrop(true)
                    ->columnSpanFull(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('category_name')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('layout_detail_path')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\IconColumn::make('default')
                    ->boolean(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ManageCategories::route('/'),
        ];
    }
}
