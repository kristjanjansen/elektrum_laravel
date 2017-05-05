<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class NotificationAssignment
 */
class NotificationAssignment extends Model
{
    protected $table = 'sarp_notification_assignments';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'notification_id',
        'assignment_id',
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

    public function assignment()
    {
    
        return $this->belongsTo('App\Assignment');

    }
}