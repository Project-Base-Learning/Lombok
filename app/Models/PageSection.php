<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class PageSection extends Model
{
    protected $table = 'page_sections';
    public $timestamps = false;

    protected $fillable = [
        'sort_order',
        'pattern_id',
    ];

    public function page() : BelongsTo
    {
        return $this->belongsTo(User::class, 'page_id');
    }

    public function pattern() : BelongsTo
    {
        return $this->belongsTo(Pattern::class, 'pattern_id');
    }
}
