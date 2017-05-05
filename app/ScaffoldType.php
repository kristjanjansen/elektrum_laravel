<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class ScaffoldType
 */
class ScaffoldType extends Model
{
    protected $table = 'sarp_scaffold_types';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'name',
        'type',
        'season_price_m2_over_3_months',
        'season_price_m2_fewer_3_months',
        'winter_price_m2_over_3_months',
        'winter_price_m2_fewer_3_months',
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