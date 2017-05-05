<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Training
 */
class Training extends Model
{
    protected $table = 'sarp_trainings';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'name',
        'description',
        'link',
        'has_file',
        'file_name',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

        
}