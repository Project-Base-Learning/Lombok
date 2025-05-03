<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;

class Section extends Model
{
    use SoftDeletes;

    protected $table = 'sections';

    protected $fillable = [
        'title',
        'layout_path',
        'has_dataset',
        'type_id'
    ];

    protected $casts = [
        'has_dataset' => 'boolean',
    ];

    public function user() : BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function type() : BelongsTo
    {
        return $this->belongsTo(SectionType::class, 'type_id');
    }

    public function dataset() : HasOne
    {
        return $this->hasOne(SectionLoad::class, 'section_id');
    }

    protected static function booted()
    {
        static::saving(function ($data) {
            $data->user_id = Auth::user()->id;
        });
    }
}
