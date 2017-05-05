<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class WorkWorker
 */
class WorkWorker extends Model
{
    protected $table = 'sarp_work_workers';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'work_id',
        'worker_id',
        'role',
        'is_no_work_needed',
        'is_done',
        'work_start_date',
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

    public function work()
    {
    
        return $this->belongsTo('App\Work');

    }
        
}