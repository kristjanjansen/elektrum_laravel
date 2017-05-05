<?php

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
use App\WorkWorkerTime;

Artisan::command('sarp:generate', function () {

    $admin = factory(App\User::class)->create();

    $rooms = factory(App\Room::class, 10)->create([
        'building_id' => factory(App\Building::class)->create([
            'site_id' => factory(App\Site::class)->create()->id
        ])->id
    ]);

    $scaffolds = factory(App\Scaffold::class, 10)->create([
        'scaffold_type_id' => factory(App\ScaffoldType::class)
            ->create()->id
    ]);

    $workers = factory(App\Worker::class, 3)
        ->create()
        ->each(function($worker) {
            $worker
                ->user()
                ->associate(factory(App\User::class)->create());
            $worker
                ->worker_card()
                ->save(factory(App\WorkerCard::class)->create());
        });

    $contracts = factory(App\Contract::class, 10)->create([
        'project_id' => function () {
            return factory(App\Project::class)->create()->id;
        },
        'contact_user_id' => function () {
            return factory(App\User::class)->create()->id;
        },
        'seller_user_id' => function () {
            return factory(App\User::class)->create()->id;
        },
        'supervisor_user_id' => function () {
            return factory(App\User::class)->create()->id;
        }
    ]);

    $works = factory(App\Work::class, 3)
        ->create([
            'client_id' => function () {
                return factory(App\Client::class)->create()->id;
            },
        ])
        ->each(function($work) use ($rooms) {
            $room = $rooms->random();
            $work->room_id = $room->id;
            $work->building_id = $room->building->id;
            $work->save();
        })
        ->each(function($work) use ($contracts) {
            $contract = $contracts->random();
            $work->contract_id = $contract->id;
            $work->project_id = $contract->project->id;
            $work->save();
        })
        ->each(function($work) use ($scaffolds) {
            $work->scaffold_id = $scaffolds->random()->id;
            $work->save();
        })
        ->each(function($work) use ($workers, $admin)    {
            $workers->each(function($worker) use ($work, $admin) {
                $work->workers()->attach($worker->id, [
                    'hash' => str_random(6),
                    'work_start_date' => \Carbon\Carbon::now(),
                    'added' => \Carbon\Carbon::now(),
                    'added_by' => $admin->id,
                    'changed' => \Carbon\Carbon::now(),
                    'changed_by' => $admin->id
                ]);
            });
        });


});

/*
Artisan::command('worker:create', function () {

    $card = new Worker;
    $card->name = collect(['John','Tina'])->random()
        . ' '
        . collect(['Blue','Doe'])->random();
    $card->save();

});

Artisan::command('workercard:create', function () {
    $cardType = CardType::latest('added')->first();

    $card = new WorkerCard;
    $card->number = rand(1, 1000);
    $card->hash = str_random(6);
    $card->worker_id = 1;
    $card->card_type()->associate($cardType);
    $card->date_expire = \Carbon\Carbon::now();
    //$card->added = \Carbon\Carbon::now();
    $card->added_by = 1;
    //$card->changed = \Carbon\Carbon::now();
    $card->changed_by = 1;
    $card->save();
});

Artisan::command('cardtype:create', function () {
    $card = new CardType;
    $card->name = collect(['Door','Gate', 'Car'])->random().' card';
    $card->hash = str_random(6);
    //$card->added = \Carbon\Carbon::now();
    $card->added_by = 1;
    //$card->changed = \Carbon\Carbon::now();
    $card->changed_by = 1;
    $card->db_stamp = \Carbon\Carbon::now();
    $card->save();
});

*/
