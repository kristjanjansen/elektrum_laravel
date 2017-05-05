<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpReportsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_reports', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('hash', 6)->unique('hash');
			$table->integer('followup_nr')->unsigned();
			$table->enum('status', array('not_sent','sent','accepted','invoiced'))->default('not_sent');
			$table->integer('client_id')->unsigned();
			$table->integer('project_id')->unsigned();
			$table->integer('contract_id')->unsigned();
			$table->date('date_start');
			$table->date('date_end');
			$table->float('rent', 10);
			$table->float('work', 10);
			$table->float('material', 10);
			$table->float('transport', 10);
			$table->float('total', 10);
			$table->string('confirm_hash', 60)->nullable();
			$table->boolean('is_deleted')->default(0);
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
		Schema::drop('sarp_reports');
	}

}
