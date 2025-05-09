<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SectionResource\Pages;
use App\Models\Section;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class SectionResource extends Resource
{
    protected static ?string $model = Section::class;

    protected static ?string $navigationGroup = 'Settings';
    protected static ?int $navigationSort  = 4;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-group';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('title')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('layout_path')
                    ->required()
                    ->maxLength(255),
                Forms\Components\Select::make('type_id')
                    ->relationship('type', 'type')
                    ->createOptionForm([
                        Forms\Components\TextInput::make('type')
                            ->required()
                            ->maxLength(255)
                            ->unique(column: 'type')
                            ->label('Type'),
                    ])
                    ->preload()
                    ->searchable()
                    ->required()
                    ->label('Type'),
                Forms\Components\Toggle::make('has_dataset')
                    ->label('Enable Dataset')
                    ->default(false)
                    ->live(),
                Forms\Components\Fieldset::make('Dataset')
                    ->visible(
                        fn ($record, $get): bool => $get('has_dataset') == true
                    )
                    ->relationship('dataset')
                    ->schema([
                        Forms\Components\TextInput::make('variable_name')
                            ->label('Name Variable')
                            ->required()
                            ->unique('Section_loads', 'variable_name', ignoreRecord: true),
                        Forms\Components\Select::make('dataset_id')
                            ->required()
                            ->live()
                            ->relationship('category', 'category_name'),
                        Forms\Components\TextInput::make('order_col')
                            ->label('Order Column')
                            ->default('published_at'),
                        Forms\Components\Select::make('order_sort')
                            ->label('Order Sort')
                            ->options([
                                'asc' => 'Ascending',
                                'desc' => 'Descending',
                            ])
                            ->default('asc'),
                        Forms\Components\Select::make('paginate')
                            ->label('Paginate')
                            ->options([
                                'default' => 'Default',
                                'simple' => 'Simple',
                            ])
                            ->nullable(),
                        Forms\Components\TextInput::make('limit')
                            ->label('Limit')
                            ->default(0)
                            ->minValue(0),
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->groups([
                'type.type',
                'user.name'
            ])
            ->columns([
                Tables\Columns\TextColumn::make('title')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('layout_path')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('type.type')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('user.name')
                    ->label('Last edited by')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('deleted_at')
                    ->dateTime()
                    ->sortable()
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                Tables\Filters\TrashedFilter::make(),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
                Tables\Actions\ForceDeleteAction::make(),
                Tables\Actions\RestoreAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                    Tables\Actions\ForceDeleteBulkAction::make(),
                    Tables\Actions\RestoreBulkAction::make(),
                ]),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ManageSections::route('/'),
        ];
    }

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]);
    }
}
