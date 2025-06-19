<?php

namespace App\Enums;

use App\Traits\WithOptions;

enum TypeFieldEnum: string
{
    use WithOptions;

    case Text = 'text';
    case Select = 'select';
    case Boolean = 'boolean';
    case Datetime = 'datetime';
    case Textarea = 'textarea';
}
