<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class WorkEvaluation
 */
class WorkEvaluation extends Model
{
    protected $table = 'sarp_work_evaluations';

    public $timestamps = false;

    protected $fillable = [
        'hash',
        'work_id',
        'people_present',
        'date_evaluation',
        'site_functions',
        'have_read',
        'radio_1',
        'steps_1',
        'radio_2',
        'steps_2',
        'radio_3',
        'steps_3',
        'radio_4',
        'steps_4',
        'radio_4_1',
        'steps_4_1',
        'radio_4_2',
        'steps_4_2',
        'radio_4_3',
        'steps_4_3',
        'radio_4_4',
        'steps_4_4',
        'radio_4_5',
        'steps_4_5',
        'radio_4_6',
        'steps_4_6',
        'radio_4_7',
        'steps_4_7',
        'radio_4_8',
        'steps_4_8',
        'radio_4_9',
        'steps_4_9',
        'radio_4_10',
        'steps_4_10',
        'radio_5',
        'steps_5',
        'radio_5_1',
        'steps_5_1',
        'radio_5_2',
        'steps_5_2',
        'radio_5_3',
        'steps_5_3',
        'radio_5_4',
        'steps_5_4',
        'radio_5_5',
        'steps_5_5',
        'radio_5_6',
        'steps_5_6',
        'radio_5_7',
        'steps_5_7',
        'radio_5_8',
        'steps_5_8',
        'radio_5_9',
        'steps_5_9',
        'radio_6',
        'steps_6',
        'radio_7',
        'steps_7',
        'radio_8',
        'steps_8',
        'radio_9',
        'steps_9',
        'radio_9_1',
        'steps_9_1',
        'radio_9_2',
        'steps_9_2',
        'radio_9_3',
        'steps_9_3',
        'radio_9_4',
        'steps_9_4',
        'radio_9_5',
        'steps_9_5',
        'radio_9_6',
        'steps_9_6',
        'radio_9_7',
        'steps_9_7',
        'radio_10',
        'steps_10',
        'radio_11',
        'steps_11',
        'radio_12',
        'steps_12',
        'radio_13',
        'steps_13',
        'inspector',
        'person_in_charge',
        'fitters',
        'canvas_inspector',
        'canvas_person_in_charge',
        'canvas_fitters',
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