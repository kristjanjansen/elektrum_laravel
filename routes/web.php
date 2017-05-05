<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

$models = [
    'Building' => ['site', 'rooms'],
    'CardType' => [],
    'Client' => [],
    'Contract' => ['project'],
    'Project' => [],
    'Room' => ['building', 'building.site'],
    'Scaffold' => ['scaffold_type'],
    'ScaffoldType' => [],
    'Site' => ['buildings', 'buildings.rooms'],
    'User' => [],
    'Work' => ['client', 'project', 'contract'],
    'Worker' => ['user'],
    'WorkerCard' => ['worker'],
];

Route::get('/', function () use ($models) {
    return view('frontpage', [
        'models' => array_keys($models)
    ]);
});

Route::get('/{model}', function ($model) use ($models) {
    $namespacedModel = '\\App\\'.$model;
    $with = $models[$model];
    $rows = $namespacedModel::
        with($with)
        ->get();
    return view('model', [
        'model' => $model,
        'rows' => $rows->toJson(),
        'fields' => $rows->count() ? collect($rows[0])->keys()->toJson() : '[]'
    ]);
});

function component($name, $data = []) {
    $attributes = collect($data)
        ->map(function($value, $key) {
            return ":$key='$value'"; // Single quotes do work
        })
        ->implode(' ');
    return "<component is=\"$name\" $attributes></component>";
}
