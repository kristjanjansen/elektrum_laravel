<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Client
 */
class Client extends Model
{
    protected $table = 'sarp_clients';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'name',
        'address',
        'rami_nr',
        'vat_nr',
        'phone',
        'email',
        'responsible_user_id',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

        
}