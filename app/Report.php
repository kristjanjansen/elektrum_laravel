<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Report
 */
class Report extends Model
{
    protected $table = 'sarp_reports';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'followup_nr',
        'status',
        'client_id',
        'project_id',
        'contract_id',
        'date_start',
        'date_end',
        'rent',
        'work',
        'material',
        'transport',
        'total',
        'confirm_hash',
        'is_deleted',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

    public function client()
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