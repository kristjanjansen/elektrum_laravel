<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class WorkerComment
 */
class WorkerComment extends Model
{
    protected $table = 'sarp_worker_comments';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'worker_id',
        'visibility',
        'content',
        'date_comment',
        'has_file',
        'file_name',
        'added',
        'added_by',
        'changed',
        'changed_by',
        'db_stamp'
    ];

    protected $guarded = [];

    public function worker()
    {
    
        return $this->belongsTo('App\Worker');

    }
        
}