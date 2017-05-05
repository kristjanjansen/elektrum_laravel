<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpScaffoldRentalsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_scaffold_rentals', function(Blueprint $table)
		{
			$table->bigInteger('id', true)->unsigned();
			$table->string('hash', 6);
			$table->string('rental_nr', 6);
			$table->float('total', 10, 0);
			$table->integer('work_id');
			$table->integer('rent_percent')->default(0);
			$table->string('status', 50);
			$table->string('comment', 100);
			$table->text('sizes', 65535);
			$table->date('date_up_and_running');
			$table->date('date_dismantling');
			$table->date('date_stopped');
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
		Schema::drop('sarp_scaffold_rentals');
	}

}
