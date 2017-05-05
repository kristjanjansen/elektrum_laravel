<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class CardType
 */
class CardType extends Model
{
    protected $table = 'sarp_card_types';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'name',
        'does_expire',
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