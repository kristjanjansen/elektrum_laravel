<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class SubcontractorComment
 */
class SubcontractorComment extends Model
{
    protected $table = 'sarp_subcontractor_comments';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'subcontractor_id',
        'content',
        'date_comment',
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
}