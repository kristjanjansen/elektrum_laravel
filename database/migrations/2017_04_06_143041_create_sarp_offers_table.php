<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpOffersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_offers', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('hash', 6)->unique('hash');
			$table->string('offer_nr', 9);
			$table->integer('raw_nr')->unsigned();
			$table->date('date_created');
			$table->date('date_start');
			$table->integer('week')->unsigned();
			$table->integer('days')->unsigned();
			$table->enum('project_duration', array('less_than_3','over_3'))->default('less_than_3');
			$table->integer('client_id')->unsigned();
			$table->integer('project_id')->unsigned();
			$table->integer('contract_id')->unsigned();
			$table->string('order_nr', 100);
			$table->integer('probability')->unsigned();
			$table->integer('cost_center_id')->unsigned();
			$table->integer('site_id')->unsigned();
			$table->string('contract_name', 1000);
			$table->integer('contact_user_id')->unsigned();
			$table->integer('seller_user_id')->unsigned();
			$table->integer('supervisor_user_id')->unsigned();
			$table->integer('foreman_user_id')->unsigned();
			$table->enum('status', array('draft','sent','active','archived','declined'))->default('draft');
			$table->float('rental_total_costs', 10, 0)->unsigned();
			$table->float('rental_total_m2', 10, 0)->unsigned();
			$table->float('rental_total_offer_prices', 10, 0)->unsigned();
			$table->float('rental_total_eur_day_plus_profit', 10, 0)->unsigned();
			$table->float('rental_total_eur_month_plus_profit', 10, 0)->unsigned();
			$table->float('rental_total_profit', 10, 0)->unsigned();
			$table->float('work_total_m2', 10, 0)->unsigned();
			$table->float('work_total_costs', 10, 0)->unsigned();
			$table->float('work_total_offer_prices', 10, 0)->unsigned();
			$table->float('work_total_profit', 10, 0)->unsigned();
			$table->float('transport_total_costs', 10, 0)->unsigned();
			$table->float('transport_total_offer_prices', 10, 0)->unsigned();
			$table->float('transport_total_profit', 10, 0)->unsigned();
			$table->float('crane_total_costs', 10, 0)->unsigned();
			$table->float('crane_total_offer_prices', 10, 0)->unsigned();
			$table->float('crane_total_profit', 10, 0)->unsigned();
			$table->float('material_total_costs', 10, 0);
			$table->float('material_total_offer_prices', 10, 0);
			$table->float('material_total_profit', 10, 0);
			$table->float('other_total_costs', 10, 0)->unsigned();
			$table->float('other_total_offer_prices', 10, 0)->unsigned();
			$table->float('other_total_profit', 10, 0)->unsigned();
			$table->float('cost_total_offer_prices', 10, 0)->unsigned();
			$table->float('total_offer_prices', 10, 0)->unsigned();
			$table->float('total_costs', 10, 0)->unsigned();
			$table->float('total_profit', 10, 0)->unsigned();
			$table->float('rental_fees_estimated_total', 10, 0);
			$table->float('hourly_works_estimated_total', 10, 0);
			$table->float('material_sales_estimated_total', 10, 0);
			$table->boolean('is_deleted')->default(0);
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
		Schema::drop('sarp_offers');
	}

}
