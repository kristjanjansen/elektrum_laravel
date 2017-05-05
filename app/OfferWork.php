<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class OfferWork
 */
class OfferWork extends Model
{
    protected $table = 'sarp_offer_works';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'offer_id',
        'rental_id',
        'nr',
        'scaffold_type_id',
        'work_step',
        'work_total_percent',
        'work_total_percent_dismantling',
        'work_total_percent_crane',
        'work_total_percent_transport',
        'work_total_percent_other',
        'work_total_percent_material',
        'rental_nr',
        'cost_m2',
        'cost_eur_m2',
        'cost_tot_eur',
        'profit_percentage',
        'bargain_eur_m2',
        'bargain_tot_eur',
        'transport_cost_eur',
        'transport_profit_percentage',
        'transport_offer_eur',
        'crane_cost_eur',
        'crane_profit_percentage',
        'crane_offer_eur',
        'material_cost_eur',
        'material_profit_percentage',
        'material_offer_eur',
        'material_notes',
        'other_cost_eur',
        'other_profit_percentage',
        'other_offer_eur',
        'other_notes',
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

    public function rental()
    {
    
        return $this->belongsTo('App\Rental');

    }

    public function scaffold_type()
    {
    
        return $this->belongsTo('App\ScaffoldType');

    }
        
}