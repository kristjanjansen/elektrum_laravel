<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class NotificationCard
 */
class NotificationCard extends Model
{
    protected $table = 'sarp_notification_cards';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'notification_id',
        'card_id',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

    public function notification()
    {
    
        return $this->belongsTo('App\Notification');

    }
}