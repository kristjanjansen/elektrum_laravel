<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Material
 */
class Material extends Model
{
    protected $table = 'sarp_materials';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'name',
        'product_code',
        'unit_type',
        'unit_price',
        'cost',
        'is_deleted',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'deleted',
        'deleted_by',
        'db_stamp'
    ];

    protected $guarded = [];

        
}