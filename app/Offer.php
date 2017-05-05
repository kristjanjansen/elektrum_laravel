<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Offer
 */
class Offer extends Model
{
    protected $table = 'sarp_offers';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'offer_nr',
        'raw_nr',
        'date_created',
        'date_start',
        'week',
        'days',
        'project_duration',
        'client_id',
        'project_id',
        'contract_id',
        'order_nr',
        'probability',
        'cost_center_id',
        'site_id',
        'contract_name',
        'contact_user_id',
        'seller_user_id',
        'supervisor_user_id',
        'foreman_user_id',
        'status',
        'rental_total_costs',
        'rental_total_m2',
        'rental_total_offer_prices',
        'rental_total_eur_day_plus_profit',
        'rental_total_eur_month_plus_profit',
        'rental_total_profit',
        'work_total_m2',
        'work_total_costs',
        'work_total_offer_prices',
        'work_total_profit',
        'transport_total_costs',
        'transport_total_offer_prices',
        'transport_total_profit',
        'crane_total_costs',
        'crane_total_offer_prices',
        'crane_total_profit',
        'material_total_costs',
        'material_total_offer_prices',
        'material_total_profit',
        'other_total_costs',
        'other_total_offer_prices',
        'other_total_profit',
        'cost_total_offer_prices',
        'total_offer_prices',
        'total_costs',
        'total_profit',
        'rental_fees_estimated_total',
        'hourly_works_estimated_total',
        'material_sales_estimated_total',
        'is_deleted',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

    public function offer()
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
        
}