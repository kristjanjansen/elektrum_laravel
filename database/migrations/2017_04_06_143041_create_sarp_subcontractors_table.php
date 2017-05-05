<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpSubcontractorsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_subcontractors', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->string('hash', 6)->unique('hash');
			$table->string('name', 100);
			$table->string('reg_code', 10)->nullable();
			$table->string('address', 100)->nullable();
			$table->string('email', 50)->nullable();
			$table->string('email_report', 50)->nullable();
			$table->string('phone', 20)->nullable();
			$table->boolean('has_logo')->default(0);
			$table->integer('responsible_user_id')->unsigned();
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
		Schema::drop('sarp_subcontractors');
	}

}
