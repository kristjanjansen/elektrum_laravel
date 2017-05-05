<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Project
 */
class Project extends Model
{
    protected $table = 'sarp_projects';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'project_nr',
        'cost_center_id',
        'site_id',
        'client_id',
        'invoice_emails',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

    public function cost_center()
    {
    
        return $this->belongsTo('App\CostCenter');

    }

    public function site()
    {
    
        return $this->belongsTo('App\Site');

    }

    public function client()
    {
    
        return $this->belongsTo('App\Client');

    }
}