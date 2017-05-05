<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Building
 */
class Building extends Model
{
    protected $table = 'sarp_buildings';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'site_id',
        'name',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

    public function site()
    {
    
        return $this->belongsTo('App\Site');

    }

    public function rooms()
    {
    
        return $this->hasMany('App\Room');

    }
}