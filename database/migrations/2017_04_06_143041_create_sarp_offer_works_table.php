<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpOfferWorksTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_offer_works', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('hash', 6)->unique('hash');
			$table->integer('offer_id')->unsigned();
			$table->integer('rental_id')->unsigned()->default(0);
			$table->integer('nr')->unsigned();
			$table->integer('scaffold_type_id')->unsigned()->default(0);
			$table->integer('work_step')->unsigned();
			$table->integer('work_total_percent')->default(0);
			$table->integer('work_total_percent_dismantling')->default(0);
			$table->integer('work_total_percent_crane')->default(0);
			$table->integer('work_total_percent_transport')->default(0);
			$table->integer('work_total_percent_other')->default(0);
			$table->integer('work_total_percent_material')->default(0);
			$table->string('rental_nr', 6);
			$table->float('cost_m2', 10, 0)->unsigned();
			$table->float('cost_eur_m2', 10, 0)->unsigned();
			$table->float('cost_tot_eur', 10, 0)->unsigned();
			$table->float('profit_percentage', 10, 0)->unsigned();
			$table->float('bargain_eur_m2', 10, 0)->unsigned();
			$table->float('bargain_tot_eur', 10, 0)->unsigned();
			$table->float('transport_cost_eur', 10, 0)->unsigned();
			$table->float('transport_profit_percentage', 10, 0)->unsigned();
			$table->float('transport_offer_eur', 10, 0)->unsigned();
			$table->float('crane_cost_eur', 10, 0)->unsigned();
			$table->float('crane_profit_percentage', 10, 0)->unsigned();
			$table->float('crane_offer_eur', 10, 0)->unsigned();
			$table->float('material_cost_eur', 10, 0)->unsigned();
			$table->float('material_profit_percentage', 10, 0)->unsigned();
			$table->float('material_offer_eur', 10, 0)->unsigned();
			$table->string('material_notes', 100);
			$table->float('other_cost_eur', 10, 0)->unsigned();
			$table->float('other_profit_percentage', 10, 0)->unsigned();
			$table->float('other_offer_eur', 10, 0)->unsigned();
			$table->string('other_notes', 100);
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
		Schema::drop('sarp_offer_works');
	}

}
