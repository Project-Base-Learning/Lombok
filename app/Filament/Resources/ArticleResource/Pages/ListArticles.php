<?php

namespace App\Filament\Resources\ArticleResource\Pages;

use App\Filament\Resources\ArticleResource;
use App\Models\Category;
use Filament\Actions;
use Filament\Resources\Components\Tab;
use Filament\Resources\Pages\ListRecords;

class ListArticles extends ListRecords
{
    protected static string $resource = ArticleResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }

    public function getTabs(): array
    {
        $categories = Category::all() ?? [];
        $tabs = [];

        $tabs[] = Tab::make('All');

        foreach ($categories as $categoryKey => $category) {
            $tabs[] = Tab::make($category->category_name)
                ->modifyQueryUsing(function ($query) use ($category) {
                    return $query->where('category_id', $category->id);
                });
        }

        return $tabs;
    }
}
