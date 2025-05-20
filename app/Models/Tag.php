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

    public function creator() : BelongsTo
    {
        return $this->belongsTo(User::class, 'created_by');
    }

    public function editor() : BelongsTo
    {
        return $this->belongsTo(User::class, 'updated_by');
    }

    public function articles() : BelongsToMany
    {
        return $this->belongsToMany(Article::class, 'articles_tags');
    }

    protected static function booted()
    {
        static::creating(function ($data) {
            $data->created_by = Auth::user()->id;
        });

        static::saving(function ($data) {
            $data->updated_by = Auth::user()->id;
            if ($data->isDirty('tag_name') && empty($data->slug)) {
                $data->slug = Str::slug($data->tag_name);
            }
        });
    }
}
