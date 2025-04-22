<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class PatternLoad extends Model
{
    protected $table = 'pattern_loads';
    public $timestamps = false;

    protected $fillable = [
        'name_variable',
        'dataset_id',
        'order_col',
        'order_sort',
        'paginate',
        'limit',
    ];

    public function category() : BelongsTo
    {
        return $this->belongsTo(Category::class, 'dataset_id');
    }
}
