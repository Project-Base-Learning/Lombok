<?php

namespace App\Filament\Forms;

use App\Models\Section;
use Filament\Forms\Components\Select;

class TemplateFieldsForm
{
    public static function get(): array
    {
        return [
            Select::make('navigation')
                ->options(Section::whereHas('type', fn ($query) => $query->where('type', 'Navigation'))->pluck('title', 'id')->toArray()),
            Select::make('footer')
                ->options(Section::whereHas('type', fn ($query) => $query->where('type', 'Footer'))->pluck('title', 'id')->toArray()),
        ];
    }
}
