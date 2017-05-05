<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class User
 */
class User extends Model
{
    protected $table = 'sarp_users';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'main_role',
        'sub_role',
        'subcontractor_id',
        'client_id',
        'first_name',
        'last_name',
        'phone',
        'email',
        'password',
        'language',
        'is_active',
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

    public function client()
    {
    
        return $this->belongsTo('App\Client');

    }

    public function worker()
    {
    
        return $this->hasOne('App\Worker');

    }
}