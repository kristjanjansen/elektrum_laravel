<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpOfferCostsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_offer_costs', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('hash', 6)->unique('hash');
			$table->integer('offer_id')->unsigned();
			$table->string('name', 100);
			$table->integer('cost_id')->unsigned();
			$table->float('amount', 10, 0)->unsigned();
			$table->string('unit', 10);
			$table->float('eur_unit', 10, 0)->unsigned();
			$table->float('total_eur', 10, 0)->unsigned();
			$table->float('profit_percentage', 10, 0)->unsigned();
			$table->float('offer_eur', 10, 0)->unsigned();
			$table->string('notes', 500);
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
		Schema::drop('sarp_offer_costs');
	}

}
