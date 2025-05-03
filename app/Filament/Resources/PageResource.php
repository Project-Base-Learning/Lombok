<?php

namespace App\Filament\Resources;

use Illuminate\Support\Str;
use App\Filament\Resources\PageResource\Pages;
use App\Models\Page;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Notifications\Notification;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PageResource extends Resource
{
    protected static ?string $model = Page::class;

    protected static ?string $navigationGroup = 'Settings';
    protected static ?int $navigationSort  = 2;

    protected static ?string $navigationIcon = 'heroicon-o-document-text';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make()
                    ->schema([
                        Forms\Components\TextInput::make('title')
                            ->required()
                            ->maxLength(255)
                            ->reactive()
                            ->debounce(1000)
                            ->afterStateUpdated(function (callable $set, $state) {
                                $set('slug', Str::slug($state));
                            }),
                        Forms\Components\TextInput::make('slug')
                            ->required()
                            ->unique(ignoreRecord: true)
                            ->maxLength(255)
                            ->regex('/^[a-z0-9-]+$/'),
                    ])
                    ->columns(1)
                    ->columnSpan(['lg' => 1]),
                Forms\Components\Section::make()
                    ->schema([
                        Forms\Components\Repeater::make('sections')
                            ->relationship('sections')
                            ->label('Sections')
                            ->orderColumn('sort_order')
                            ->schema([
                                Forms\Components\Select::make('section_id')
                                    ->required()
                                    ->searchable()
                                    ->preload()
                                    ->relationship('section', 'title'),
                            ])
                            ->columnSpan('full')
                            ->addActionLabel('Add Another')
                            ->columns(1),
                    ])
                    ->columns(1)
                    ->columnSpan(['lg' => 1]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->reorderable('sort_order')
            ->defaultSortOptionLabel('sort_order')
            ->groups([
                'editor.name'
            ])
            ->columns([
                Tables\Columns\TextColumn::make('title')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('published_at')
                    ->dateTime()
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('editor.name')
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
                Tables\Actions\Action::make('publish')
                    ->label('Publish')
                    ->action(function ($record) {
                        $record->update([
                            'published_at' => now(),
                        ]);
                        Notification::make()
                            ->title('Published')
                            ->success()
                            ->send();
                    })
                    ->visible(fn ($record) => empty($record->published_at)),
                Tables\Actions\Action::make('unpublish')
                    ->label('Unpublish')
                    ->action(function ($record) {
                        $record->update([
                            'published_at' => null,
                        ]);
                        Notification::make()
                            ->title('Unpublished')
                            ->success()
                            ->send();
                    })
                    ->visible(fn ($record) => $record->published_at),
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
            'index' => Pages\ManagePages::route('/'),
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
