<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class ScaffoldRental
 */
class ScaffoldRental extends Model
{
    protected $table = 'sarp_scaffold_rentals';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'rental_nr',
        'total',
        'work_id',
        'rent_percent',
        'status',
        'comment',
        'sizes',
        'date_up_and_running',
        'date_dismantling',
        'date_stopped',
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
}