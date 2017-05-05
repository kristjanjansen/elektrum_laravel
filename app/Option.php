<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Option
 */
class Option extends Model
{
    protected $table = 'sarp_options';

    public $timestamps = false;

    protected $fillable = [
        'option_key',
        'option_value',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

        
}