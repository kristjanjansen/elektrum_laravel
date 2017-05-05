<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class OfferCost
 */
class OfferCost extends Model
{
    protected $table = 'sarp_offer_costs';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'offer_id',
        'name',
        'cost_id',
        'amount',
        'unit',
        'eur_unit',
        'total_eur',
        'profit_percentage',
        'offer_eur',
        'notes',
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

    public function cost()
    {
    
        return $this->belongsTo('App\Cost');

    }
    
}