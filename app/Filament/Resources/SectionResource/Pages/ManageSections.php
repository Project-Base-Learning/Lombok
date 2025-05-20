<?php

namespace App\Filament\Resources\SectionResource\Pages;

use App\Filament\Resources\SectionResource;
use App\Models\SectionType;
use Filament\Actions;
use Filament\Resources\Components\Tab;
use Filament\Resources\Pages\ManageRecords;

class ManageSections extends ManageRecords
{
    protected static string $resource = SectionResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }

    public function getTabs(): array
    {
        $types = SectionType::all() ?? [];
        $tabs = [];

        $tabs[] = Tab::make('All');

        foreach ($types as $typeKey => $type) {
            $tabs[] = Tab::make($type->type)
                ->modifyQueryUsing(function ($query) use ($type) {
                    return $query->where('type_id', $type->id);
                });
        }

        return $tabs;
    }
}
