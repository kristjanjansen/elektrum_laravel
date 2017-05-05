<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpUsersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_users', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('hash', 6)->unique('hash');
			$table->enum('main_role', array('subcontractor','client','rami'))->default('subcontractor');
			$table->enum('sub_role', array('user','worker','foreman','safety','supervisor','supervisor_rr','supervisor_pt','manager_cc','manager','admin'))->default('worker');
			$table->integer('subcontractor_id')->unsigned()->nullable();
			$table->integer('client_id')->unsigned()->default(0);
			$table->string('first_name', 200)->nullable();
			$table->string('last_name', 200)->nullable();
			$table->string('phone', 100);
			$table->string('email', 200)->nullable();
			$table->string('password')->nullable();
			$table->enum('language', array('en','et','fi','pl'))->default('fi');
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
		Schema::drop('sarp_users');
	}

}
