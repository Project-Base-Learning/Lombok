<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;

use BezhanSalleh\FilamentShield\Traits\HasPanelShield;
use Filament\Panel;
use Spatie\Permission\Traits\HasRoles;
use Filament\Models\Contracts\FilamentUser;
use Filament\Models\Contracts\HasAvatar;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class User extends Authenticatable implements FilamentUser, HasAvatar
{
    use Notifiable, SoftDeletes, HasRoles, HasPanelShield;

    protected $table = 'users';
    

    public function canAccessPanel(Panel $panel): bool
    {
       return $this->hasAnyRole(['Developer', 'Superadmin', 'Admin']);
    }

    protected $fillable = [
        'name',
        'password',
        'email',
        'profile_image',
        'email_verified_at',
        'role_id'
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected $casts = [
        'password' => 'hashed',
        'email_verified_at' => 'datetime',
    ];

    public function articles() : HasMany
    {
        return $this->hasMany(Article::class);
    }

    public function tags() : HasMany
    {
        return $this->hasMany(Tag::class);
    }

    public function getFilamentAvatarUrl(): ?string
    {
        return Auth::user()->profile_image ? Storage::url(Auth::user()->profile_image) : 'https://ui-avatars.com/api/?name=' . Auth::user()->name;
    }

    protected static function booted()
    {
        static::forceDeleting(function ($data) {
            if ($data->profile_image && Storage::disk('public')->exists($data->profile_image)) {
                Storage::disk('public')->delete($data->profile_image);
            }
        });
    }
}
