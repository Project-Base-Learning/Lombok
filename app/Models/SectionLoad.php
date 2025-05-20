<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class SectionLoad extends Model
{
    protected $table = 'section_loads';
    public $timestamps = false;

    protected $fillable = [
        'variable_name',
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
