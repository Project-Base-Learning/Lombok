<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;

class Role extends Model
{
    use SoftDeletes;

    protected $table = 'roles';

    protected $fillable = [
        'role_name',
    ];

    public function user() : BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function users() : HasMany
    {
        return $this->hasMany(User::class);
    }

    protected static function booted()
    {
        static::saving(function ($data) {
            $data->user_id = Auth::user()->id;
        });
    }
}
