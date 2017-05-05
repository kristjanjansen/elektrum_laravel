<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class ClientArea
 */
class ClientArea extends Model
{
    protected $table = 'sarp_client_areas';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'client_id',
        'area_id',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

    public function client()
    {
    
        return $this->belongsTo('App\Client');

    }

    public function area()
    {
    
        return $this->belongsTo('App\Area');

    }
}