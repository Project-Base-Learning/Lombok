<?php

namespace App\Filament\Resources;

use Illuminate\Support\Str;
use App\Filament\Resources\ArticleResource\Pages;
use App\Models\Article;
use App\Models\Cover;
use App\Models\GeneralSetting;
use App\Models\Sponsor;
use App\Models\Category;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Notifications\Notification;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use FilamentTiptapEditor\TiptapEditor;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ArticleResource extends Resource
{
    protected static ?string $model = Article::class;

    protected static ?string $navigationGroup = 'Article';
    protected static ?int $navigationSort  = 1;

    protected static ?string $navigationIcon = 'heroicon-o-pencil';

    public static function getCleanOptionString(Model $data): string
    {
        return view('filament.components.select_option_image')
            ->with('image', $data->image_path)
            ->with('label', $data->title ?? $data->alt)
            ->render();
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Tabs::make('Tabs')
                    ->tabs([
                        Forms\Components\Tabs\Tab::make('Application')
                            ->icon('heroicon-o-tv')
                            ->schema([
                                Forms\Components\Section::make()
                                    ->schema([
                                        Forms\Components\Textarea::make('title')
                                            ->unique('articles', 'title', ignoreRecord: true)
                                            ->rows(3)
                                            ->required()
                                            ->maxLength(255)
                                            ->columnSpan(['lg' => 2])
                                            ->reactive()
                                            ->debounce(1000)
                                            ->afterStateUpdated(function (callable $set, $state) {
                                                $set('slug', Str::slug($state));
                                            }),
                                        Forms\Components\Textarea::make('slug')
                                            ->required()
                                            ->rows(3)
                                            ->unique(ignoreRecord: true)
                                            ->maxLength(255)
                                            ->regex('/^[a-z0-9-]+$/')
                                            ->columnSpan(['lg' => 2]),
                                        Forms\Components\Select::make('cover')
                                            ->required()
                                            ->relationship('cover')
                                            ->allowHtml()
                                            ->searchable()
                                            ->createOptionForm([
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
                                            ])
                                            ->options(fn () => Cover::all()
                                                ->mapWithKeys(fn ($item) => [
                                                    $item->id => static::getCleanOptionString($item)
                                                ])
                                                ->toArray(),
                                            )
                                            ->getSearchResultsUsing(function (string $query) {
                                                $covers = Cover::where('alt', 'like', "%{$query}%")->limit(25)->get();
                                                return $covers->mapWithKeys(fn ($item) => [
                                                    $item->id => static::getCleanOptionString($item)
                                                ])
                                                ->toArray();
                                            })
                                            ->getOptionLabelUsing(function ($value): string {
                                                return Cover::find($value)
                                                    ->mapWithKeys(fn ($item) => [
                                                        $item->id => static::getCleanOptionString($item)
                                                    ])
                                                    ->toArray();
                                            })
                                            ->columnSpan(2),
                                    ])
                                    ->columns(2)
                                    ->columnSpan(['lg' => 2]),
                                Forms\Components\Section::make()
                                    ->schema([
                                        Forms\Components\Select::make('category_id')
                                            ->required()
                                            ->disabledOn('edit')
                                            ->live()
                                            ->relationship('category', 'category_name'),
                                        Forms\Components\Select::make('categories')
                                            ->multiple()
                                            ->relationship('categories', 'category_name')
                                            ->createOptionForm([
                                                Forms\Components\TextInput::make('category_name')
                                                    ->required()
                                                    ->maxLength(255)
                                                    ->unique(column: 'category_name')
                                                    ->label('Category name'),
                                            ])
                                            ->searchable(),
                                        Forms\Components\Select::make('sponsors')
                                            ->multiple()
                                            ->relationship('sponsors')
                                            ->allowHtml()
                                            ->options(fn () => Sponsor::all()
                                                ->mapWithKeys(fn ($item) => [
                                                    $item->id => static::getCleanOptionString($item)
                                                ])
                                                ->toArray(),
                                            )
                                            ->getSearchResultsUsing(function (string $query) {
                                                $sponsors = Sponsor::where('title', 'like', "%{$query}%")->limit(25)->get();
                                                return $sponsors->mapWithKeys(fn ($item) => [
                                                    $item->id => static::getCleanOptionString($item)
                                                ])
                                                ->toArray();
                                            })
                                            ->getOptionLabelUsing(function ($value): string {
                                                return Sponsor::find($value)
                                                    ->mapWithKeys(fn ($item) => [
                                                        $item->id => static::getCleanOptionString($item)
                                                    ])
                                                    ->toArray();
                                            })
                                            ->searchable()
                                            ->visible(function () {
                                                $data = GeneralSetting::first()?->toArray() ?: [];
                                                return $data['features']['sponsors'];
                                            }),
                                        Forms\Components\Toggle::make('private'),
                                    ])
                                    ->columns(1)
                                    ->columnSpan(['lg' => 1]),
                            ])
                            ->columns(3),
                        Forms\Components\Tabs\Tab::make('Content')
                            ->icon('heroicon-o-pencil')
                            ->schema([
                                TiptapEditor::make('content')
                                    ->profile('default')
                                    ->columnSpanFull(),
                            ])
                            ->columns(1),
                        Forms\Components\Tabs\Tab::make('SEO')
                            ->icon('heroicon-o-window')
                            ->schema([
                                Forms\Components\TextInput::make('meta_title')
                                    ->maxLength(255),
                                Forms\Components\Textarea::make('meta_desc')
                                    ->label('Meta Description')
                                    ->rows(5)
                                    ->columnSpanFull(),
                            ])
                            ->columns(2)
                            ->statePath('metadata'),
                        Forms\Components\Tabs\Tab::make('Other')
                            ->icon('heroicon-o-plus')
                            ->visible(
                                fn ($record, $get) => Category::query()
                                    ->where([
                                        'id' => $get('category_id'),
                                        'category_name' => 'event'
                                    ])->exists()
                            )
                            ->schema([
                                Forms\Components\Section::make()
                                    ->schema([
                                        Forms\Components\DateTimePicker::make('start_date')
                                            ->seconds(false)
                                            ->reactive(),
                                        Forms\Components\DateTimePicker::make('finish_date')
                                            ->seconds(false)
                                            ->reactive()
                                            ->after('start_date'),
                                        Forms\Components\TextInput::make('location')
                                            ->label('Location link')
                                            ->url()
                                            ->default('https://maps.app.goo.gl/RG4syWQQ9GnQWpiS8'),
                                        Forms\Components\Toggle::make('has_ticket')
                                            ->label('Enable Ticketing')
                                            ->default(false)
                                            ->live(),
                                    ])
                                    ->columns(1)
                                    ->columnSpan(['lg' => 2]),
                                Forms\Components\Fieldset::make('Ticketing')
                                    ->visible(
                                        fn ($record, $get): bool => $get('has_ticket') == true
                                    )
                                    ->schema([
                                        Forms\Components\TextInput::make('price')
                                            ->minValue(1)
                                            ->numeric()
                                            ->prefix('Rp.'),
                                        Forms\Components\TextInput::make('quota')
                                            ->minValue(1)
                                            ->numeric()
                                            ->prefix('People'),
                                        Forms\Components\TextInput::make('link')
                                            ->label('Register link')
                                            ->url()
                                            ->required()
                                            ->maxLength(255),
                                    ])
                                    ->columns(1)
                                    ->columnSpan(['lg' => 1])
                                    ->statePath('ticketing'),
                            ])
                            ->columns(3)
                            ->statePath('others'),
                    ])
                    ->columnSpan(2),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->defaultGroup('category.category_name')
            ->columns([
                Tables\Columns\TextColumn::make('title')
                    ->searchable(),
                Tables\Columns\TextColumn::make('category.category_name')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('published_at')
                    ->dateTime()
                    ->sortable(),
                Tables\Columns\IconColumn::make('private')
                    ->boolean()
                    ->trueIcon('heroicon-o-check-circle')
                    ->falseIcon('heroicon-o-x-circle')
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('creator.name')
                    ->label('Created by')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('editor.name')
                    ->label('Last edited by')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('deleted_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                Tables\Filters\SelectFilter::make('category')->relationship('category', 'category_name'),
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
                Tables\Actions\Action::make('private')
                    ->label('Private')
                    ->action(function ($record) {
                        $record->update([
                            'privated' => 1,
                        ]);
                        Notification::make()
                            ->title('Privated')
                            ->success()
                            ->send();
                    })
                    ->visible(fn ($record) => !$record->privated),
                Tables\Actions\Action::make('unprivate')
                    ->label('Unprivate')
                    ->action(function ($record) {
                        $record->update([
                            'privated' => 0,
                        ]);
                        Notification::make()
                            ->title('Unprivaated')
                            ->success()
                            ->send();
                    })
                    ->visible(fn ($record) => $record->privated),
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

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListArticles::route('/'),
            'create' => Pages\CreateArticle::route('/create'),
            'edit' => Pages\EditArticle::route('/{record}/edit'),
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
