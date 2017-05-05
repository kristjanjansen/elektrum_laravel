<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class OfferRate
 */
class OfferRate extends Model
{
    protected $table = 'sarp_offer_rates';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'offer_id',
        'name',
        'base',
        'percent50',
        'percent100',
        'percent150',
        'percent200',
        'percent300',
        'day_shift',
        'night_shift',
        'KM',
        'travel_h',
        'daily_allowance',
        'estimated_hours',
        'estimated_total',
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

    public function offer()
    {
    
        return $this->belongsTo('App\Offer');

    }
        
}