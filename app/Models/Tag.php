<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Tag extends Model
{
    protected $table = 'tags';
    public $timestamps = false;

    protected $fillable = [
        'tag',
        'layout_detail_path'
    ];

    public function articles() : HasMany
    {
        return $this->hasMany(Article::class, 'tag_id');
    }
}
