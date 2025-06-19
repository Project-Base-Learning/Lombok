<?php

namespace App\Models;

use Awcodes\Curator\Models\Media;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;

class Sponsor extends Model
{
    use SoftDeletes;

    protected $table = 'sponsors';

    protected $fillable = [
        'title',
        'featured'
    ];

    protected $casts = [
        'featured' => 'boolean',
    ];

    public function creator() : BelongsTo
    {
        return $this->belongsTo(User::class, 'created_by');
    }

    public function editor() : BelongsTo
    {
        return $this->belongsTo(User::class, 'updated_by');
    }

    public function image(): BelongsTo
    {
        return $this->belongsTo(Media::class, 'image_id', 'id');
    }

    public function category() : BelongsTo
    {
        return $this->belongsTo(SponsorCategory::class, 'category_id');
    }

    public function articles() : BelongsToMany
    {
        return $this->belongsToMany(Article::class, 'article_sponsors');
    }

    protected static function booted()
    {
        static::creating(function ($data) {
            $data->created_by = Auth::user()->id;
        });

        static::saving(function ($data) {
            $data->updated_by = Auth::user()->id;
        });

        static::deleting(function ($data) {
            $data->articles()->detach();
        });
    }
}
