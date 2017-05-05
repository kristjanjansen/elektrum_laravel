<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSarpScaffoldTypesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sarp_scaffold_types', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('hash', 6)->unique('hash');
			$table->string('name', 100);
			$table->enum('type', array('scaffold','tent'))->default('scaffold');
			$table->float('season_price_m2_over_3_months', 10, 0)->unsigned();
			$table->float('season_price_m2_fewer_3_months', 10, 0)->unsigned();
			$table->float('winter_price_m2_over_3_months', 10, 0)->unsigned();
			$table->float('winter_price_m2_fewer_3_months', 10, 0)->unsigned();
			$table->float('cost', 10, 0)->unsigned();
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
		Schema::drop('sarp_scaffold_types');
	}

}
