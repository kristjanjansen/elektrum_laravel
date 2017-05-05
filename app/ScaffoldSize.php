<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class ScaffoldSize
 */
class ScaffoldSize extends Model
{
    protected $table = 'sarp_scaffold_sizes';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'scaffold_id',
        'length',
        'width',
        'height',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

    public function scaffold()
    {
    
        return $this->belongsTo('App\Scaffold');

    }
}