<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;

class Page extends Model
{
    use SoftDeletes;

    protected $table = 'pages';

    protected $fillable = [
        'title',
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

    public function sections() : HasMany
    {
        return $this->hasMany(PageSection::class, 'page_id')->orderBy('sort_order');
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
    }
}
