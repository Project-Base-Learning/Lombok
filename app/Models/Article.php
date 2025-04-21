<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;

class Article extends Model
{
    use SoftDeletes;

    protected $table = 'articles';

    protected $fillable = [
        'title',
        'slug',
        'content',
        'private',
        'others',
        'metadata',
        'published_at',
    ];

    protected $casts = [
        'privated' => 'boolean',
        'others' => 'array',
        'metadata' => 'array',
        'published_at' => 'datetime'
    ];

    public function creator() : BelongsTo
    {
        return $this->belongsTo(User::class, 'created_by');
    }

    public function editor() : BelongsTo
    {
        return $this->belongsTo(User::class, 'updated_by');
    }

    public function cover() : BelongsToMany
    {
        return $this->belongsToMany(Cover::class, 'articles_cover');
    }

    public function categories() : BelongsToMany
    {
        return $this->belongsToMany(Category::class, 'articles_categories');
    }

    public function tag() : BelongsTo
    {
        return $this->belongsTo(Tag::class, 'tag_id');
    }

    public function sponsors(): BelongsToMany
    {
        return $this->belongsToMany(Sponsor::class, 'article_sponsors')->withTrashed();
    }

    protected static function booted()
    {
        static::creating(function ($data) {
            $data->created_by = Auth::user()->id;
        });

        static::saving(function ($data) {
            $data->updated_by = Auth::user()->id;
            if ($data->isDirty('title') && empty($data->slug)) {
                $data->slug = Str::slug($data->title);
            }
        });

        static::forceDeleting(function ($data) {
            Cover::where('id', $data->cover->first()->id)->first()->delete();
        });
    }
}
