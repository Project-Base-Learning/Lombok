<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Category extends Model
{
    protected $table = 'categories';
    public $timestamps = false;

    protected $fillable = [
        'category_name',
        'default',
        'fields',
        'layout_detail_path'
    ];

    protected $casts = [
        'default' => 'boolean',
        'fields' => 'array',
    ];

    public function articles() : HasMany
    {
        return $this->hasMany(Article::class, 'category_id');
    }

    protected static function booted()
    {
        static::saving(function ($data) {
            $records = Category::where([['id', '!=', $data->id], ['default', 1]])->get();
            if (!$records->isEmpty()) {
                $records->update(['default', 0]);
            } else {
                $data->default = 1;
            }
        });
    }
}
