<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class OfferMaterial
 */
class OfferMaterial extends Model
{
    protected $table = 'sarp_offer_materials';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'offer_id',
        'material_id',
        'eur_unit',
        'amount',
        'total_eur',
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

    public function material()
    {
    
        return $this->belongsTo('App\Material');

    }
}