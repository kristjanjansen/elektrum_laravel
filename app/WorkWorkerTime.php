<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class WorkWorkerTime
 */
class WorkWorkerTime extends Model
{
    protected $table = 'sarp_work_worker_times';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'work_worker_id',
        'date',
        'time_start',
        'time_end',
        'norm',
        'percent_50',
        'percent_100',
        'percent_150',
        'percent_200',
        'percent_300',
        'client_norm',
        'client_50',
        'client_100',
        'client_150',
        'client_200',
        'client_300',
        'day_shift',
        'night_shift',
        'KM',
        'travel_h',
        'daily_allowance',
        'client_day_shift',
        'client_night_shift',
        'client_KM',
        'client_travel_h',
        'client_daily_allowance',
        'client_time_start',
        'client_time_end',
        'is_accepted',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

    public function work_worker()
    {
    
        return $this->belongsTo('App\WorkWorker');

    }
        
}