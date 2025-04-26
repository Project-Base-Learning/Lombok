<?php

namespace App\Filament\Resources;

use App\Filament\Resources\CoverResource\Pages;
use App\Models\Cover;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;

class CoverResource extends Resource
{
    protected static ?string $model = Cover::class;

    protected static ?string $navigationGroup = 'Article';
    protected static ?int $navigationSort  = 2;

    protected static ?string $navigationIcon = 'heroicon-o-photo';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\FileUpload::make('image_path')
                    ->label('Image')
                    ->image()
                    ->imageEditor()
                    ->optimize('webp')
                    ->resize(50)
                    ->directory('covers')
                    ->maxSize(2048)
                    ->required(),
                Forms\Components\TextInput::make('alt')
                    ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('image_path'),
                Tables\Columns\TextColumn::make('alt')
                    ->sortable()
                    ->searchable(),
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
            'index' => Pages\ManageCovers::route('/'),
        ];
    }
}
