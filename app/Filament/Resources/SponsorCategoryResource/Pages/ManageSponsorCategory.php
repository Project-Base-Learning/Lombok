<?php

namespace App\Filament\Resources\SponsorCategoryResource\Pages;

use App\Filament\Resources\SponsorCategoryResource;
use Filament\Actions;
use Filament\Resources\Pages\ManageRecords;

class ManageSponsorCategory extends ManageRecords
{
    protected static string $resource = SponsorCategoryResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
