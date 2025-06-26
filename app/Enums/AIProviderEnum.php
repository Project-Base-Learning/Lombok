<?php

namespace App\Enums;

use App\Traits\WithOptions;

enum AIProviderEnum: string
{
    use WithOptions;

    case Gemini = 'Gemini';
}
