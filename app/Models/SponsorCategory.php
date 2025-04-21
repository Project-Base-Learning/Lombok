<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class SponsorCategory extends Model
{
    protected $table = 'sponsor_categories';
    public $timestamps = false;

    protected $fillable = [
        'category_name',
        'sort_order',
    ];

    public function partners() : HasMany
    {
        return $this->hasMany(Sponsor::class, 'category_id')->orderBy('title');
    }
}
