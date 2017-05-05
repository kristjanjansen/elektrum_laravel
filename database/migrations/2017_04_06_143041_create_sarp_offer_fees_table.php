<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpOfferFeesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_offer_fees', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('hash', 6)->unique('hash');
			$table->integer('offer_id')->unsigned();
			$table->integer('scaffold_type_id')->unsigned()->default(0);
			$table->float('eur_unit_day', 10, 0)->unsigned();
			$table->float('min_eur_day', 10, 0)->unsigned();
			$table->float('estimated_m2', 10, 0)->unsigned();
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
		Schema::drop('sarp_offer_fees');
	}

}
