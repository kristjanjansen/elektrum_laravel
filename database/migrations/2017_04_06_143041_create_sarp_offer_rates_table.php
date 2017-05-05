<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpOfferRatesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_offer_rates', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('hash', 6)->unique('hash');
			$table->integer('offer_id')->unsigned();
			$table->string('name', 50);
			$table->float('base', 10, 0)->unsigned();
			$table->float('percent50', 10, 0)->unsigned();
			$table->float('percent100', 10, 0)->unsigned();
			$table->float('percent150', 10, 0)->unsigned();
			$table->float('percent200', 10, 0)->unsigned();
			$table->float('percent300', 10, 0)->unsigned();
			$table->float('day_shift', 10, 0);
			$table->float('night_shift', 10, 0);
			$table->float('KM', 10, 0);
			$table->float('travel_h', 10, 0);
			$table->float('daily_allowance', 10, 0);
			$table->float('estimated_hours', 10, 0)->unsigned();
			$table->float('estimated_total', 10, 0)->unsigned();
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
		Schema::drop('sarp_offer_rates');
	}

}
