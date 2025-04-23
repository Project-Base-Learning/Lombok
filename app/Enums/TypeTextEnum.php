<?php

namespace App\Enums;

use App\Traits\WithOptions;

enum TypeTextEnum: string
{
    use WithOptions;

    case Email = 'email';
    case Numeric = 'numeric';
    case Integer = 'integer';
    case Password = 'password';
    case Tel = 'tel';
    case Url = 'url';
}
