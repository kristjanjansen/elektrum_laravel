<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Scaffold
 */
class Scaffold extends Model
{
    protected $table = 'sarp_scaffolds';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'scaffold_type_id',
        'status',
        'offer_id',
        'rental_nr',
        'is_contract',
        'offer_rental_id',
        'offer_step',
        'is_rent_100',
        'building_id',
        'room_id',
        'date_assembling',
        'date_up_and_running',
        'date_dismantling',
        'date_stopped',
        'comment',
        'is_deleted',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'deleted',
        'deleted_by',
        'db_stamp'
    ];

    protected $guarded = [];

    public function scaffold_type()
    {
    
        return $this->belongsTo('App\ScaffoldType');

    }

    public function offer_rental()
    {
    
        return $this->belongsTo('App\OfferRental');

    }

    public function building()
    {
    
        return $this->belongsTo('App\Building');

    }

    public function room()
    {
    
        return $this->belongsTo('App\Room');

    }
        
}