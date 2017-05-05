<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpScaffoldsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_scaffolds', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('hash', 6)->unique('hash');
			$table->integer('scaffold_type_id')->unsigned();
			$table->enum('status', array('assembling','enlarging','modification','partly_dismantled','up_and_running','dismantling','transport','stopped'))->default('assembling');
			$table->integer('offer_id')->unsigned();
			$table->string('rental_nr', 6);
			$table->integer('is_contract')->default(0);
			$table->integer('offer_rental_id')->default(0);
			$table->integer('offer_step');
			$table->integer('is_rent_100')->default(1);
			$table->integer('building_id')->unsigned();
			$table->integer('room_id')->unsigned();
			$table->date('date_assembling');
			$table->date('date_up_and_running');
			$table->date('date_dismantling');
			$table->date('date_stopped');
			$table->string('comment', 100);
			$table->boolean('is_deleted')->default(0);
			$table->dateTime('added');
			$table->integer('added_by')->unsigned();
			$table->dateTime('changed');
			$table->integer('changed_by')->unsigned();
			$table->dateTime('deleted');
			$table->integer('deleted_by')->unsigned();
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
		Schema::drop('sarp_scaffolds');
	}

}
