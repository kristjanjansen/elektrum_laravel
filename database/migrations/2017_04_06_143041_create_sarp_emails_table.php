<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpEmailsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_emails', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('ref_model_name', 100)->nullable();
			$table->integer('ref_model_id')->nullable();
			$table->boolean('is_sent')->default(0);
			$table->boolean('has_error')->default(0);
			$table->string('address', 200);
			$table->string('subject', 200);
			$table->text('body', 65535);
			$table->string('attachment_path', 250)->nullable();
			$table->string('error', 500);
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
		Schema::drop('sarp_emails');
	}

}
