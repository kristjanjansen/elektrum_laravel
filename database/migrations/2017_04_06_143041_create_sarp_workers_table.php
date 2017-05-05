<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpWorkersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_workers', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->string('hash', 6)->unique('hash');
			$table->integer('user_id')->unsigned();
			$table->date('date_birth');
			$table->string('tax_number', 50);
			$table->string('greencard_nr', 50);
			$table->date('date_greencard_expire');
			$table->boolean('has_greencard_picture')->default(0);
			$table->string('bluecard_nr', 50);
			$table->date('date_bluecard_expire');
			$table->boolean('has_bluecard_picture')->default(0);
			$table->string('valtti_nr', 50);
			$table->date('date_valtti_expire');
			$table->boolean('has_valtti_picture')->default(0);
			$table->string('accident_contact', 100);
			$table->string('accident_phone', 100);
			$table->string('local_address', 50);
			$table->string('home_address', 50);
			$table->boolean('has_picture')->default(0);
			$table->float('hour_price1', 10, 0);
			$table->float('hour_price2', 10, 0);
			$table->float('hour_price3', 10, 0);
			$table->date('date_inspection');
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
		Schema::drop('sarp_workers');
	}

}
