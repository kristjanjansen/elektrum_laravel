<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Work
 */
class Work extends Model
{
    protected $table = 'sarp_works';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'work_nr',
        'raw_nr',
        'type',
        'status',
        'client_id',
        'project_id',
        'contract_id',
        'offer_id',
        'offer_work_id',
        'work_percent',
        'work_type',
        'other_work',
        'is_foil',
        'offer_fixed_hour',
        'scaffold_type_id',
        'scaffold_id',
        'building_id',
        'room_id',
        'client_work_nr',
        'is_no_work_needed',
        'supervisor_user_id',
        'other_offer_id',
        'date_start',
        'date_end',
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

    public function project()
    {
    
        return $this->belongsTo('App\Project');

    }

    public function contract()
    {
    
        return $this->belongsTo('App\Contract');

    }

    public function offer()
    {
    
        return $this->belongsTo('App\Offer');

    }

    public function offer_work()
    {
    
        return $this->belongsTo('App\OfferWork');

    }

    public function scaffold_type()
    {
    
        return $this->belongsTo('App\ScaffoldType');

    }

    public function scaffold()
    {
    
        return $this->belongsTo('App\Scaffold');

    }

    public function building()
    {
    
        return $this->belongsTo('App\Building');

    }

    public function room()
    {
    
        return $this->belongsTo('App\Room');

    }

    public function work_worker()
    {
    
        return $this->belongsTo('App\Worker');

    }

    public function workers()
    {
    
        return $this->belongsToMany('App\Worker', 'sarp_work_workers');

    }
}