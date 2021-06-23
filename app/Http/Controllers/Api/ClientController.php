<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Client;
use App\Models\History;

class ClientController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Client::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $client= new Client();
        $client->name=$request->get('name');
        $client->last_name=$request->get('last_name');
        $client->email=$request->get('email');
        $client->cellphone=$request->get('cellphone');
        $client->save();
        $history=new History();
        $history->oxygen=$request->get('oxygen');
        $history->temperature=$request->get('temperature');
        $history->frecuency=$request->get('frecuency');

        $history->save();

        $client->history()->attach($history->id);
        return $client;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $client=Client::with('histories')->get()->find($id);
        return $client;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $client=Client::find($id)->first();
        $client->name=$request->get('name');
        $client->last_name=$request->get('last_name');
        $client->email=$request->get('email');
        $client->cellphone=$request->get('cellphone');
        $client->save();
        return "Actualizado";

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $client=Client::find($id);
        $client->delete();
        return "eliminado";
    }
}
