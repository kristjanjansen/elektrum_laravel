<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Worker
 */
class Worker extends Model
{
    protected $table = 'sarp_workers';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'user_id',
        'date_birth',
        'tax_number',
        'greencard_nr',
        'date_greencard_expire',
        'has_greencard_picture',
        'bluecard_nr',
        'date_bluecard_expire',
        'has_bluecard_picture',
        'valtti_nr',
        'date_valtti_expire',
        'has_valtti_picture',
        'accident_contact',
        'accident_phone',
        'local_address',
        'home_address',
        'has_picture',
        'hour_price1',
        'hour_price2',
        'hour_price3',
        'date_inspection',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

    public function user()
    {
    
        return $this->belongsTo('App\User');

    }
    
    public function worker_card()
    {
    
        return $this->hasOne('App\WorkerCard');

    }

    public function works()
    {
    
        return $this->belongsToMany('App\Work', 'sarp_work_workers');

    }

    public function areas()
    {
    
        return $this->belongsToMany('App\Area', 'sarp_worker_areas');

    }
}