<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Area
 */
class Area extends Model
{
    protected $table = 'sarp_areas';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'parent_id',
        'name',
        'complete_name',
        'type',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

}