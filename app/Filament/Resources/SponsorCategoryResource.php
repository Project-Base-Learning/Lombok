<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SponsorCategoryResource\Pages;
use App\Models\GeneralSetting;
use App\Models\SponsorCategory;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;

class SponsorCategoryResource extends Resource
{
    protected static ?string $model = SponsorCategory::class;

    protected static ?string $navigationGroup = 'Sponsors';
    protected static ?int $navigationSort  = 2;

    protected static ?string $navigationIcon = 'heroicon-o-tag';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('category_name')
                    ->required()
                    ->unique(ignoreRecord: true)
                    ->maxLength(255),
                Forms\Components\TextInput::make('sort_order')
                    ->required()
                    ->numeric()
                    ->default(0),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('category_name')
                    ->searchable(),
                Tables\Columns\TextColumn::make('sort_order')
                    ->numeric()
                    ->sortable(),
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
            'index' => Pages\ManageSponsorCategory::route('/'),
        ];
    }

    public static function canAccess(): bool
    {
        $data = GeneralSetting::first()?->toArray() ?: [];
        return $data['features']['sponsors'];
    }
}
