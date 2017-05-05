<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpWorkEvaluationsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_work_evaluations', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('hash', 6)->unique('hash');
			$table->integer('work_id')->unsigned();
			$table->string('people_present', 1000);
			$table->date('date_evaluation');
			$table->string('site_functions', 1000);
			$table->boolean('have_read')->default(0);
			$table->boolean('radio_1')->default(0);
			$table->string('steps_1', 1000);
			$table->boolean('radio_2')->default(0);
			$table->string('steps_2', 1000);
			$table->boolean('radio_3')->default(0);
			$table->string('steps_3', 1000);
			$table->boolean('radio_4')->default(0);
			$table->string('steps_4', 1000);
			$table->integer('radio_4_1')->unsigned()->default(0);
			$table->string('steps_4_1', 100);
			$table->integer('radio_4_2')->unsigned()->default(0);
			$table->string('steps_4_2', 100);
			$table->integer('radio_4_3')->unsigned()->default(0);
			$table->string('steps_4_3', 100);
			$table->integer('radio_4_4')->unsigned()->default(0);
			$table->string('steps_4_4', 100);
			$table->integer('radio_4_5')->unsigned()->default(0);
			$table->string('steps_4_5', 100);
			$table->integer('radio_4_6')->unsigned();
			$table->string('steps_4_6', 100);
			$table->integer('radio_4_7')->unsigned();
			$table->string('steps_4_7', 100);
			$table->integer('radio_4_8')->unsigned();
			$table->string('steps_4_8', 100);
			$table->integer('radio_4_9')->unsigned();
			$table->string('steps_4_9', 100);
			$table->integer('radio_4_10')->unsigned();
			$table->string('steps_4_10', 100);
			$table->boolean('radio_5')->default(0);
			$table->string('steps_5', 1000);
			$table->integer('radio_5_1')->unsigned()->default(0);
			$table->string('steps_5_1', 100);
			$table->integer('radio_5_2')->unsigned()->default(0);
			$table->string('steps_5_2', 100);
			$table->integer('radio_5_3')->unsigned()->default(0);
			$table->string('steps_5_3', 100);
			$table->integer('radio_5_4')->unsigned()->default(0);
			$table->string('steps_5_4', 100);
			$table->integer('radio_5_5')->unsigned()->default(0);
			$table->string('steps_5_5', 100);
			$table->integer('radio_5_6')->unsigned()->default(0);
			$table->string('steps_5_6', 100);
			$table->integer('radio_5_7')->unsigned()->nullable()->default(0);
			$table->string('steps_5_7', 100);
			$table->integer('radio_5_8')->unsigned()->default(0);
			$table->string('steps_5_8', 100);
			$table->integer('radio_5_9')->unsigned()->default(0);
			$table->string('steps_5_9', 100);
			$table->boolean('radio_6')->default(0);
			$table->string('steps_6', 1000);
			$table->boolean('radio_7')->default(0);
			$table->string('steps_7', 1000);
			$table->boolean('radio_8')->default(0);
			$table->string('steps_8', 1000);
			$table->boolean('radio_9')->default(0);
			$table->string('steps_9', 1000);
			$table->integer('radio_9_1')->unsigned()->default(0);
			$table->string('steps_9_1', 100);
			$table->integer('radio_9_2')->unsigned()->default(0);
			$table->string('steps_9_2', 100);
			$table->integer('radio_9_3')->unsigned()->default(0);
			$table->string('steps_9_3', 100);
			$table->integer('radio_9_4')->unsigned()->default(0);
			$table->string('steps_9_4', 100);
			$table->integer('radio_9_5')->unsigned()->default(0);
			$table->string('steps_9_5', 100);
			$table->integer('radio_9_6')->unsigned()->default(0);
			$table->string('steps_9_6', 100);
			$table->integer('radio_9_7')->unsigned()->default(0);
			$table->string('steps_9_7', 100);
			$table->boolean('radio_10')->default(0);
			$table->string('steps_10', 100);
			$table->boolean('radio_11')->default(0);
			$table->string('steps_11', 100);
			$table->boolean('radio_12')->default(0);
			$table->string('steps_12', 100);
			$table->boolean('radio_13')->default(0);
			$table->string('steps_13', 100);
			$table->string('inspector', 200);
			$table->string('person_in_charge', 200);
			$table->string('fitters', 200);
			$table->text('canvas_inspector', 65535);
			$table->text('canvas_person_in_charge', 65535);
			$table->text('canvas_fitters', 65535);
			$table->dateTime('added');
			$table->integer('added_by')->unsigned();
			$table->dateTime('changed');
			$table->integer('changed_by')->unsigned();
			$table->timestamp('db_stamp')->default(DB::raw('CURRENT_TIMESTAMP'));
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('sarp_work_evaluations');
	}

}
