<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpWorkWorkersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_work_workers', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('hash', 6)->unique('hash');
			$table->integer('work_id')->unsigned();
			$table->integer('worker_id')->unsigned();
			$table->enum('role', array('worker','supervisor'))->default('worker');
			$table->boolean('is_no_work_needed')->nullable()->default(0);
			$table->boolean('is_done')->default(0);
			$table->date('work_start_date');
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
		Schema::drop('sarp_work_workers');
	}

}
