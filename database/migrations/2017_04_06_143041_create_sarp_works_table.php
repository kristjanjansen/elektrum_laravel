<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpWorksTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_works', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('hash', 6)->unique('hash');
			$table->string('work_nr', 10);
			$table->integer('raw_nr')->unsigned();
			$table->enum('type', array('new','contract'))->default('new');
			$table->enum('status', array('queued','ongoing','ended'))->default('queued');
			$table->integer('client_id')->unsigned();
			$table->integer('project_id')->unsigned();
			$table->integer('contract_id')->unsigned();
			$table->integer('offer_id')->unsigned();
			$table->integer('offer_work_id')->unsigned()->default(0);
			$table->integer('work_percent')->default(0);
			$table->enum('work_type', array('assembling','enlarging','modification','modification_for_other_client','partly_dismantled','dismantling','transport','other_work','foil','crane','contract_other_work','material_other_work'))->default('assembling');
			$table->string('other_work', 100);
			$table->boolean('is_foil')->default(0);
			$table->integer('offer_fixed_hour')->default(0);
			$table->integer('scaffold_type_id')->unsigned();
			$table->integer('scaffold_id')->unsigned();
			$table->integer('building_id')->unsigned();
			$table->integer('room_id')->unsigned();
			$table->string('client_work_nr', 100);
			$table->boolean('is_no_work_needed')->default(0);
			$table->integer('supervisor_user_id')->unsigned();
			$table->integer('other_offer_id')->unsigned()->default(0);
			$table->date('date_start');
			$table->date('date_end');
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
		Schema::drop('sarp_works');
	}

}
