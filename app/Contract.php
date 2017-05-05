<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Contract
 */
class Contract extends Model
{
    protected $table = 'sarp_contracts';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'project_id',
        'rami_contract_nr',
        'order_nr',
        'description',
        'contact_user_id',
        'seller_user_id',
        'supervisor_user_id',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

    public function project()
    {
    
        return $this->belongsTo('App\Project');

    }
}