<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class OfferFee
 */
class OfferFee extends Model
{
    protected $table = 'sarp_offer_fees';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'offer_id',
        'scaffold_type_id',
        'eur_unit_day',
        'min_eur_day',
        'estimated_m2',
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

    public function scaffold_type()
    {
    
        return $this->belongsTo('App\ScaffoldType');

    }
}