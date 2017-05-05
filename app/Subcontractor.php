<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Subcontractor
 */
class Subcontractor extends Model
{
    protected $table = 'sarp_subcontractors';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'name',
        'reg_code',
        'address',
        'email',
        'email_report',
        'phone',
        'has_logo',
        'responsible_user_id',
        'is_active',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

        
}