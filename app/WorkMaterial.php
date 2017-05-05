<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class WorkMaterial
 */
class WorkMaterial extends Model
{
    protected $table = 'sarp_work_materials';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'work_id',
        'material_id',
        'amount',
        'work_start_date',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

    public function work()
    {
    
        return $this->belongsTo('App\Work');

    }

    public function material()
    {
    
        return $this->belongsTo('App\Material');

    }

}