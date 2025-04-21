<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class Sponsor extends Model
{
    use SoftDeletes;

    protected $table = 'sponsors';

    protected $fillable = [
        'title',
        'position_id',
        'image_path',
        'alt',
        'width',
        'height',
        'lazy',
        'user_id'
    ];

    protected $casts = [
        'lazy' => 'boolean',
    ];

    public function user() : BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function category() : BelongsTo
    {
        return $this->belongsTo(SponsorCategory::class, 'category_id');
    }

    public function articles() : BelongsToMany
    {
        return $this->belongsToMany(Article::class, 'articles_categories');
    }

    protected static function booted()
    {
        static::saving(function ($data) {
            $data->user_id = Auth::user()->id;
        });

        static::updating(function ($data) {
            if ($data->isDirty('image_path') && Storage::disk('public')->exists($data->getOriginal('image_path'))) {
                Storage::disk('public')->delete($data->getOriginal('image_path'));
            }
        });

        static::forceDeleting(function ($data) {
            if (Storage::disk('public')->exists($data->image_path)) {
                Storage::disk('public')->delete($data->image_path);
            }
        });
    }
}
