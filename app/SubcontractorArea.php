<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class SubcontractorArea
 */
class SubcontractorArea extends Model
{
    protected $table = 'sarp_subcontractor_areas';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'subcontractor_id',
        'area_id',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

    public function subcontractor()
    {
    
        return $this->belongsTo('App\Subcontractor');

    }

    public function area()
    {
    
        return $this->belongsTo('App\Area');

    }
        
}