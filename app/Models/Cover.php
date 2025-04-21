<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Support\Facades\Storage;

class Cover extends Model
{
    protected $table = 'covers';
    public $timestamps = false;

    protected $fillable = [
        'image_path',
        'alt'
    ];

    public function article() : BelongsToMany
    {
        return $this->belongsToMany(Article::class, 'articles_cover');
    }

    protected static function booted()
    {
        static::updating(function ($data) {
            if ($data->isDirty('image_path') && Storage::disk('public')->exists($data->getOriginal('image_path'))) {
                Storage::disk('public')->delete($data->getOriginal('image_path'));
            }
        });

        static::deleting(function ($data) {
            if (Storage::disk('public')->exists($data->image_path)) {
                Storage::disk('public')->delete($data->image_path);
            }
        });
    }
}
