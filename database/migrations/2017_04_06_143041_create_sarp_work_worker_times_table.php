<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpWorkWorkerTimesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_work_worker_times', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('hash', 6)->unique('hash');
			$table->integer('work_worker_id')->unsigned()->default(0);
			$table->date('date');
			$table->time('time_start');
			$table->time('time_end');
			$table->float('norm', 10, 0)->unsigned();
			$table->float('percent_50', 10, 0)->unsigned();
			$table->float('percent_100', 10, 0)->unsigned();
			$table->float('percent_150', 10, 0)->unsigned();
			$table->float('percent_200', 10, 0);
			$table->float('percent_300', 10, 0)->unsigned();
			$table->float('client_norm', 10, 0)->unsigned();
			$table->float('client_50', 10, 0)->unsigned();
			$table->float('client_100', 10, 0)->unsigned();
			$table->float('client_150', 10, 0)->unsigned();
			$table->float('client_200', 10, 0);
			$table->float('client_300', 10, 0)->unsigned();
			$table->float('day_shift', 10, 0);
			$table->float('night_shift', 10, 0);
			$table->float('KM', 10, 0);
			$table->float('travel_h', 10, 0);
			$table->float('daily_allowance', 10, 0);
			$table->float('client_day_shift', 10, 0);
			$table->float('client_night_shift', 10, 0);
			$table->float('client_KM', 10, 0);
			$table->float('client_travel_h', 10, 0);
			$table->float('client_daily_allowance', 10, 0);
			$table->time('client_time_start');
			$table->time('client_time_end');
			$table->boolean('is_accepted')->default(0);
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
		Schema::drop('sarp_work_worker_times');
	}

}
