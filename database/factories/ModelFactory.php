<?php
use Faker\Generator as Faker;
use Carbon\Carbon;

use App\WorkerCard;
use App\CardType;
use App\Worker;
use App\User;
use App\Work;
use App\Client;
use App\Project;
use App\Contract;
use App\Room;
use App\Building;
use App\Site;
use App\Scaffold;
use App\ScaffoldType;
use App\WorkEvaluation;
// use App\WorkMaterial; // Pivot
use App\WorkWorkerTime;

$factory->define(WorkerCard::class, function (Faker $faker) {
    return [
        'number' => rand(1, 1000),
        'hash' => str_random(6),
        'date_expire' => Carbon::now(),
        'added' => Carbon::now(),
        'changed' => Carbon::now(),
        'card_type_id' => 1,
        'worker_id' => 1,
        'added_by' => 1,
        'changed_by' => 1
    ];
});


$factory->define(CardType::class, function (Faker $faker) {
    return [
        'name' => collect(['Door','Gate', 'Car'])->random().' card',
        'hash' => str_random(6),
        'added' => Carbon::now(),
        'changed' => Carbon::now(),
        'added_by' => 1,
        'changed_by' => 1,
        'db_stamp' => Carbon::now()
    ];
});

// 

$factory->define(Worker::class, function (Faker $faker) {
    return [
        'hash' => str_random(6),
        'user_id' => 1,
        'date_birth' => Carbon::now(),
        'tax_number' => rand(10000,20000),
        'greencard_nr' => rand(10000,20000),
        'date_greencard_expire' => Carbon::now(),
        'bluecard_nr' => rand(10000,20000),
        'date_bluecard_expire' => Carbon::now(),
        'valtti_nr' => rand(10000,20000),
        'date_valtti_expire' => Carbon::now(),
        'accident_contact' => $faker->name,
        'accident_phone' => $faker->e164PhoneNumber,
        'local_address' => $faker->streetAddress,
        'home_address' => $faker->streetAddress,
        'hour_price1' => rand(1,100),
        'hour_price2' => rand(1,100),
        'hour_price3' => rand(1,100),
        'date_inspection' => Carbon::now(),
        'added' => Carbon::now(),
        'added_by' => 1,
        'changed' => Carbon::now(),
        'changed_by' => 1,
        'db_stamp' => Carbon::now()
    ];
});

$factory->define(User::class, function (Faker $faker) {
    return [
        'hash' => str_random(6),
        //'main_role' => 'subcontractor', // subcontractor
        //'sub_role' => 'worker', // worker
        'subcontractor_id' => 1, // NULL
        'client_id' => 1, // 0
        'first_name' => $faker->firstName(), // NULL
        'last_name' => $faker->lastName(), // NULL 
        'phone' => $faker->e164PhoneNumber, 
        'email' => $faker->email, // NULL
        'password' => str_random(6), // NULL
        'language' => collect(['en','et','fi','pl'])->random(), // fi
        // 'is_active', // 0
        'added' => Carbon::now(),
        'added_by' => 1,
        'changed' => Carbon::now(),
        'changed_by' => 1,
        'db_stamp' => Carbon::now()
    ];
});
    
$factory->define(Work::class, function (Faker $faker) {
    return [
        'hash' => str_random(6),
        'work_nr' => rand(10000,20000),
        'raw_nr' => rand(10000,20000),
        //'type', // 'new','contract'
        //'status', // 'queued','ongoing','ended'
        'client_id' => 1,
        'project_id' => 1,
        'contract_id' => 1,
        'offer_id' => 1,
        //'offer_work_id' => 0, // 0
        //'work_percent', => 0 // 0
        //'work_type', // 'assembling','enlarging','modification','modification_for_other_client','partly_dismantled','dismantling','transport','other_work','foil','crane','contract_other_work','material_other_work'
        'other_work' => str_random(6),
        //'is_foil' => 0, // 0
        //'offer_fixed_hour' => 0 // 0
        'scaffold_type_id' => 1,
        'scaffold_id' => 1,
        'building_id' => 1,
        'room_id' => 1,
        'client_work_nr' => rand(10000,20000),
        //'is_no_work_needed' => 0, // 0
        'supervisor_user_id' => 1,
        //'other_offer_id' => 0, // 0
        'date_start' => Carbon::now(),
        'date_end' => Carbon::now(),
        'added' => Carbon::now(),
        'added_by' => 1,
        'changed' => Carbon::now(),
        'changed_by' => 1,
        'db_stamp'=> Carbon::now()
    ];
});

$factory->define(Client::class, function (Faker $faker) {
    return [
        'hash' => str_random(6),
        'name' => $faker->name,
        'address' => $faker->streetAddress,
        'rami_nr' => rand(10000,20000),
        'vat_nr' => rand(10000,20000),
        'phone' => $faker->e164PhoneNumber,
        'email' => $faker->email,
        'responsible_user_id' => 1,
        'added' => Carbon::now(),
        'added_by' => 1,
        'changed' => Carbon::now(),
        'changed_by' => 1,
        'db_stamp'=> Carbon::now()
    ];
});

$factory->define(Project::class, function (Faker $faker) {
    return [
        'hash' => str_random(6),
        'project_nr' => rand(10000,20000),
        // 'cost_center_id' => 0, // 0
        // 'site_id' => 0, // 0
        // 'client_id' => 0, // 0
        'invoice_emails' => $faker->email,
        'added' => Carbon::now(),
        'added_by' => 1,
        'changed' => Carbon::now(),
        'changed_by' => 1,
        'db_stamp'=> Carbon::now()
    ];
});

$factory->define(Contract::class, function (Faker $faker) {
    return [
        'hash' => str_random(6),
        'project_id' => 1,
        'rami_contract_nr' => rand(10000,20000),
        'order_nr' => rand(10000,20000),
        'description' => $faker->text(100),
        'contact_user_id' => 1,
        'seller_user_id' => 1,
        'supervisor_user_id' => 1,
        'added' => Carbon::now(),
        'added_by' => 1,
        'changed' => Carbon::now(),
        'changed_by' => 1,
        'db_stamp'=> Carbon::now()
    ];
});

$factory->define(Room::class, function (Faker $faker) {
    return [
        'hash' => str_random(6),
        'building_id' => 1,
        'name' => $faker->word,
        'added' => Carbon::now(),
        'added_by' => 1,
        'changed' => Carbon::now(),
        'changed_by' => 1,
        'db_stamp'=> Carbon::now()
    ];
});

$factory->define(Building::class, function (Faker $faker) {
    return [
        'hash' => str_random(6),
        'site_id' => 1,
        'name' => $faker->word,
        'added' => Carbon::now(),
        'added_by' => 1,
        'changed' => Carbon::now(),
        'changed_by' => 1,
        'db_stamp'=> Carbon::now()
    ];
});


$factory->define(Site::class, function (Faker $faker) {
    return [
        'hash' => str_random(6),
        'cost_center_id' => 1,
        'name' => $faker->streetAddress,
        // 'is_draft' => 1 // 1
        'added' => Carbon::now(),
        'added_by' => 1,
        'changed' => Carbon::now(),
        'changed_by' => 1,
        'db_stamp'=> Carbon::now()
    ];
});

$factory->define(Scaffold::class, function (Faker $faker) {
    return [
        'hash' => str_random(6),
        'scaffold_type_id' => 1,
        // 'status' => // 'assembling','enlarging','modification','partly_dismantled','up_and_running','dismantling','transport','stopped'
        'offer_id' => 1,
        'rental_nr' => rand(10000,20000),
        // 'is_contract', // 0
        // 'offer_rental_id', // 0
        'offer_step' => 0,
        //'is_rent_100', // 1
        'building_id' => 1,
        'room_id' => 1,
        'date_assembling' => Carbon::now(),
        'date_up_and_running' => Carbon::now(),
        'date_dismantling' => Carbon::now(),
        'date_stopped' => Carbon::now(),
        'comment' => $faker->text(100),
        // 'is_deleted' // 0
        'added' => Carbon::now(),
        'added_by' => 1,
        'changed' => Carbon::now(),
        'changed_by' => 1,
        'db_stamp' => Carbon::now(),
        'deleted' => Carbon::now(),
        'deleted_by' => 1,
        'db_stamp' => Carbon::now()
    ];
});


$factory->define(ScaffoldType::class, function (Faker $faker) {
    return [
        'hash' => str_random(6),
        'name' => $faker->word,
        // 'type', // 'scaffold','tent'
        'season_price_m2_over_3_months' => 1,
        'season_price_m2_fewer_3_months' => 1,
        'winter_price_m2_over_3_months' => 1,
        'winter_price_m2_fewer_3_months' =>1,
        'cost' => 1,
        //'is_deleted', // 0
        'added' => Carbon::now(),
        'added_by' => 1,
        'changed' => Carbon::now(),
        'changed_by' => 1,
        'deleted' => Carbon::now(),
        'deleted_by' => 1,
        'db_stamp' => Carbon::now()
    ];
});

$factory->define(WorkWorkerTime::class, function (Faker $faker) {
    return [
        'hash' => str_random(6),
        // 'work_worker_id' => 0 // 0
        'date' => Carbon::now(),
        'time_start' => Carbon::now(),
        'time_end' => Carbon::now(),
        'norm' => 0,
        'percent_50' => 0,
        'percent_100' => 0,
        'percent_150' => 0,
        'percent_200' => 0,
        'percent_300' => 0,
        'client_norm' => 0,
        'client_50' => 0,
        'client_100' => 0,
        'client_150' => 0,
        'client_200' => 0,
        'client_300' => 0,
        'day_shift' => 0,
        'night_shift' => 0,
        'KM' => 0,
        'travel_h' => 0,
        'daily_allowance' => 0,
        'client_day_shift' => 0,
        'client_night_shift' => 0,
        'client_KM' => 0,
        'client_travel_h' => 0,
        'client_daily_allowance' => 0,
        'client_time_start' => Carbon::now(),
        'client_time_end' => Carbon::now(),
        //'is_accepted' => 0
        'added' => Carbon::now(),
        'added_by' => 1,
        'changed' => Carbon::now(),
        'changed_by' => 1,
        'db_stamp' => Carbon::now()
    ];
});


    [
        'hash' => str_random(6),
        'work_id' => 1,
        'people_present' => $faker->name.','.$faker->name,
        'date_evaluation'  => Carbon::now(),
        'site_functions' => $faker->text(50),
        // 'have_read', // 0
        // 'radio_1',
        'steps_1' => $faker->text(10),
        //'radio_2',
        'steps_2' => $faker->text(10),
        //'radio_3',
        'steps_3' => $faker->text(10),
        //'radio_4',
        'steps_4' => $faker->text(10),
        //'radio_4_1',
        'steps_4_1' => $faker->text(10),
        //'radio_4_2',
        'steps_4_2' => $faker->text(10),
        //'radio_4_3',
        'steps_4_3' => $faker->text(10),
        //'radio_4_4',
        'steps_4_4' => $faker->text(10),
        //'radio_4_5',
        'steps_4_5' => $faker->text(10),
        //'radio_4_6',
        'steps_4_6' => $faker->text(10),
        'radio_4_7' => 0,
        'steps_4_7' => $faker->text(10),
        'radio_4_8' => 0,
        'steps_4_8' => $faker->text(10),
        'radio_4_9' => 0,
        'steps_4_9' => $faker->text(10),
        'radio_4_10' => 0,
        'steps_4_10' => $faker->text(10),
        //'radio_5',
        'steps_5' => $faker->text(10),
        //'radio_5_1',
        'steps_5_1' => $faker->text(10),
        //'radio_5_2',
        'steps_5_2' => $faker->text(10),
        //'radio_5_3',
        'steps_5_3' => $faker->text(10),
        //'radio_5_4',
        'steps_5_4' => $faker->text(10),
        //'radio_5_5',
        'steps_5_5' => $faker->text(10),
        //'radio_5_6',
        'steps_5_6' => $faker->text(10),
        //'radio_5_7',
        'steps_5_7' => $faker->text(10),
        //'radio_5_8',
        'steps_5_8' => $faker->text(10),
        //'radio_5_9',
        'steps_5_9' => $faker->text(10),
        //'radio_6',
        'steps_6' => $faker->text(10),
        //'radio_7',
        'steps_7' => $faker->text(10),
        //'radio_8',
        'steps_8' => $faker->text(10),
        //'radio_9',
        'steps_9' => $faker->text(10),
        //'radio_9_1',
        'steps_9_1' => $faker->text(10),
        //'radio_9_2',
        'steps_9_2' => $faker->text(10),
        //'radio_9_3',
        'steps_9_3' => $faker->text(10),
        //'radio_9_4',
        'steps_9_4' => $faker->text(10),
        //'radio_9_5',
        'steps_9_5' => $faker->text(10),
        //'radio_9_6',
        'steps_9_6' => $faker->text(10),
        //'radio_9_7',
        'steps_9_7' => $faker->text(10),
        //'radio_10',
        'steps_10' => $faker->text(10),
        //'radio_11',
        'steps_11' => $faker->text(10),
        //'radio_12',
        'steps_12' => $faker->text(10),
        //'radio_13',
        'steps_13' => $faker->text(10),
        'inspector' => $faker->name,
        'person_in_charge' => $faker->name,
        'fitters' => $faker->name,
        'canvas_inspector' => $faker->name,
        'canvas_person_in_charge' => $faker->name,
        'canvas_fitters' => $faker->name,
        'added' => Carbon::now(),
        'added_by' => 1,
        'changed' => Carbon::now(),
        'changed_by' => 1,
        'deleted' => Carbon::now(),
        'deleted_by' => 1,
        'db_stamp' => Carbon::now()
    ]