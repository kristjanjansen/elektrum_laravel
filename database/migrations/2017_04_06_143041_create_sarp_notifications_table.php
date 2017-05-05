<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpNotificationsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_notifications', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('hash', 6)->index('hash');
			$table->integer('user_id')->unsigned();
			$table->string('type', 100);
			$table->string('class', 100);
			$table->string('icon', 100);
			$table->boolean('is_active')->default(0);
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
		Schema::drop('sarp_notifications');
	}

}
