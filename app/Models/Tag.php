<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;

class Tag extends Model
{
    use SoftDeletes;

    protected $table = 'tags';

    protected $fillable = [
        'tag_name',
        'slug',
    ];

    public function user() : BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function articles() : BelongsToMany
    {
        return $this->belongsToMany(Article::class, 'articles_tags');
    }

    protected static function booted()
    {
        static::saving(function ($data) {
            $data->user_id = Auth::user()->id;
            if ($data->isDirty('tag_name') && empty($data->slug)) {
                $data->slug = Str::slug($data->tag_name);
            }
        });
    }
}
