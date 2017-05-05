<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class OfferInfo
 */
class OfferInfo extends Model
{
    protected $table = 'sarp_offer_infos';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'offer_id',
        'type',
        'label',
        'is_checked',
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
    
        return $this->belongsTo('App\Offer');

    }
}