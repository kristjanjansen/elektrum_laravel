<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Notification
 */
class Notification extends Model
{
    protected $table = 'sarp_notifications';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'user_id',
        'type',
        'class',
        'icon',
        'is_active',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

    public function user()
    {
    
        return $this->belongsTo('App\User');

    }
}