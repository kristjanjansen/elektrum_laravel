<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class OfferRental
 */
class OfferRental extends Model
{
    protected $table = 'sarp_offer_rentals';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'offer_id',
        'nr',
        'scaffold_type_id',
        'work_step',
        'eur_m2',
        'tot_eur',
        'profit_percentage',
        'm2',
        'eur_m2_plus_profit',
        'days',
        'tot_eur_plus_profit',
        'eur_day_plus_profit',
        'eur_month_plus_profit',
        'rack_type',
        'length',
        'width',
        'height',
        'notes',
        'building_id',
        'room_id',
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

    public function scaffold_type()
    {
    
        return $this->belongsTo('App\ScaffoldType');

    }

    public function building()
    {
    
        return $this->belongsTo('App\Building');

    }
        
}