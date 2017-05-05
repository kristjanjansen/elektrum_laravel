<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class WorkerCard
 */
class WorkerCard extends Model
{
    protected $table = 'sarp_worker_cards';

    public $timestamps = false;
    
    protected $fillable = [
        'hash',
        'worker_id',
        'card_type_id',
        'number',
        'date_expire',
        'has_picture',
        'is_deleted',
        'deleted',
        'deleted_by',
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

    public function card_type()
    {
    
        return $this->belongsTo('App\CardType');

    }
}