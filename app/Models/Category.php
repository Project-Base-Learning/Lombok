<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;

class Category extends Model
{
    use SoftDeletes;

    protected $table = 'categories';

    protected $fillable = [
        'category_name',
        'slug',
    ];

    public function user() : BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function articles() : BelongsToMany
    {
        return $this->belongsToMany(Article::class, 'articles_categories');
    }

    protected static function booted()
    {
        static::saving(function ($data) {
            $data->user_id = Auth::user()->id;
            if ($data->isDirty('category_name') && empty($data->slug)) {
                $data->slug = Str::slug($data->category_name);
            }
        });
    }
}
