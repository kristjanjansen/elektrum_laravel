<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpWorkerCardsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_worker_cards', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('hash', 6)->unique('hash');
			$table->integer('worker_id')->unsigned();
			$table->integer('card_type_id')->unsigned();
			$table->string('number', 50)->default('');
			$table->date('date_expire');
			$table->boolean('has_picture')->default(0);
			$table->boolean('is_deleted')->default(0);
			$table->dateTime('deleted')->nullable();
			$table->integer('deleted_by')->unsigned()->nullable();
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
		Schema::drop('sarp_worker_cards');
	}

}
