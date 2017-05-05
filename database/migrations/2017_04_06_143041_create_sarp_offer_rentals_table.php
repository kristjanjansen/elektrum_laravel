<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpOfferRentalsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_offer_rentals', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('hash', 6)->unique('hash');
			$table->integer('offer_id')->unsigned();
			$table->integer('nr')->unsigned();
			$table->integer('scaffold_type_id')->unsigned()->default(0);
			$table->integer('work_step')->unsigned();
			$table->float('eur_m2', 10, 0)->unsigned();
			$table->float('tot_eur', 10, 0)->unsigned();
			$table->float('profit_percentage', 10, 0)->unsigned();
			$table->float('m2', 10, 0)->unsigned();
			$table->float('eur_m2_plus_profit', 10, 0)->unsigned();
			$table->integer('days')->unsigned();
			$table->float('tot_eur_plus_profit', 10, 0)->unsigned();
			$table->float('eur_day_plus_profit', 10, 0)->unsigned();
			$table->float('eur_month_plus_profit', 10, 0)->unsigned();
			$table->string('rack_type', 100);
			$table->float('length', 10, 0)->unsigned();
			$table->float('width', 10, 0)->unsigned();
			$table->float('height', 10, 0)->unsigned();
			$table->string('notes', 500);
			$table->integer('building_id')->unsigned()->default(0);
			$table->integer('room_id')->unsigned()->default(0);
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
		Schema::drop('sarp_offer_rentals');
	}

}
