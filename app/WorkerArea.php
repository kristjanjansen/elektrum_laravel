<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class WorkerArea
 */
class WorkerArea extends Model
{
    protected $table = 'sarp_worker_areas';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'worker_id',
        'area_id',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

    public function worker()
    {
    
        return $this->belongsTo('App\Worker');

    }

    public function area()
    {
    
        return $this->belongsTo('App\Area');

    }
        
}