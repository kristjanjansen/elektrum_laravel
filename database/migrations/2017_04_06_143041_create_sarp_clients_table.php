<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpClientsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_clients', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('hash', 6)->unique('hash');
			$table->string('name', 100);
			$table->string('address', 1000);
			$table->string('rami_nr', 100);
			$table->string('vat_nr', 100);
			$table->string('phone', 100);
			$table->string('email', 100);
			$table->integer('responsible_user_id')->unsigned();
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
		Schema::drop('sarp_clients');
	}

}
