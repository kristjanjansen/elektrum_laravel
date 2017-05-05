<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class TrainingAssignment
 */
class TrainingAssignment extends Model
{
    protected $table = 'sarp_training_assignments';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'training_id',
        'worker_id',
        'date_deadline',
        'is_opened',
        'date_opened',
        'is_accepted',
        'date_accepted',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

    public function training()
    {
    
        return $this->belongsTo('App\Training');

    }

    public function worker()
    {
    
        return $this->belongsTo('App\Worker');

    }
}