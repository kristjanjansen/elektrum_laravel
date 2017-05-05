<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Email
 */
class Email extends Model
{
    protected $table = 'sarp_emails';

    public $timestamps = false;

    protected $fillable = [
        'ref_model_name',
        'ref_model_id',
        'is_sent',
        'has_error',
        'address',
        'subject',
        'body',
        'attachment_path',
        'error',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

        
}