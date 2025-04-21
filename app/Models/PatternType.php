<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class PatternType extends Model
{
    protected $table = 'pattern_types';
    public $timestamps = false;

    protected $fillable = [
        'type',
    ];

    public function patterns() : HasMany
    {
        return $this->hasMany(Pattern::class, 'type_id');
    }
}
