<?php

namespace App\Http\Controllers;

use App\Scaffold;
use Illuminate\Http\Request;

class ScaffoldController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $rows = Scaffold::get();
        return view('frontpage', [
            'rows' => $rows->toJson(),
            'fields' => collect($rows[0])->keys()->toJson()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Scaffold  $scaffold
     * @return \Illuminate\Http\Response
     */
    public function show(Scaffold $scaffold)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Scaffold  $scaffold
     * @return \Illuminate\Http\Response
     */
    public function edit(Scaffold $scaffold)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Scaffold  $scaffold
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Scaffold $scaffold)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Scaffold  $scaffold
     * @return \Illuminate\Http\Response
     */
    public function destroy(Scaffold $scaffold)
    {
        //
    }
}
