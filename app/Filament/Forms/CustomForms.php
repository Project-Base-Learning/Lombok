<?php

namespace App\Filament\Forms;

use App\Enums\TypeFieldEnum;
use App\Enums\TypeTextEnum;
use Filament\Forms\Components\Toggle;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;

class CustomForms
{
    public static function get(array $customFields): array
    {
        $fields = [];
        foreach ($customFields as $field) {
            $tmp = null;

            switch ($field['field']) {
                case TypeFieldEnum::Text->value:
                    $tmp = TextInput::make($field['name'])
                        ->rules($field['rules'] ?? '');
                    switch ($field['type']) {
                        case TypeTextEnum::Email->value:
                            $tmp = $tmp->email();
                            break;

                        case TypeTextEnum::Numeric->value:
                            $tmp = $tmp->numeric();
                            break;

                        case TypeTextEnum::Integer->value:
                            $tmp = $tmp->integer();
                            break;

                        case TypeTextEnum::Password->value:
                            $tmp = $tmp->password();
                            break;

                        case TypeTextEnum::Tel->value:
                            $tmp = $tmp->tel();
                            break;

                        case TypeTextEnum::Url->value:
                            $tmp = $tmp->url();
                            break;

                        default:
                            $tmp = $tmp;
                            break;
                    }
                    break;

                case TypeFieldEnum::Select->value:
                    $tmp = Select::make($field['name'])
                        ->options($field['options']);
                    break;

                case TypeFieldEnum::Boolean->value:
                    $tmp = Toggle::make($field['name']);
                    break;

                case TypeFieldEnum::Datetime->value:
                    $tmp = DateTimePicker::make($field['name'])
                        ->seconds($field['seconds'])
                        ->format($field['format'] ?? '');
                    break;

                case TypeFieldEnum::Textarea->value:
                    $tmp = Textarea::make($field['name'])
                        ->rows($field['rows']);
                    break;

                default:
                    $tmp = $tmp;
                    break;
            }

            $tmp = $tmp->label($field['label'])
                ->required($field['required'])
                ->columnSpan($field['column_span']);

            if ($field['field'] != TypeFieldEnum::Boolean->value) {
                $tmp = $tmp->placeholder($field['placeholder'] ?? '');
            }

            $fields[] = $tmp;
        }

        return $fields;
    }
}
