<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Room
 */
class Room extends Model
{
    protected $table = 'sarp_rooms';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'building_id',
        'name',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

    public function building()
    {
    
        return $this->belongsTo('App\Building');

    }
        
}