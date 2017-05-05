<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Cost
 */
class Cost extends Model
{
    protected $table = 'sarp_costs';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'name',
        'eur_unit',
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