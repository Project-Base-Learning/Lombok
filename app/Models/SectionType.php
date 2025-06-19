<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class SectionType extends Model
{
    protected $table = 'section_types';
    public $timestamps = false;

    protected $fillable = [
        'type',
    ];

    public function sections() : HasMany
    {
        return $this->hasMany(Section::class, 'type_id');
    }
}
