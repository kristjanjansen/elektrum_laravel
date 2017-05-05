<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Site
 */
class Site extends Model
{
    protected $table = 'sarp_sites';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'cost_center_id',
        'name',
        'is_draft',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

    public function cost_center()
    {
    
        return $this->belongsTo('App\CostCenter');

    }

    public function buildings()
    {
    
        return $this->hasMany('App\Building');

    }
        
}