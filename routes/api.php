<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\ClientController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('client',[ClientController::class,'index']);
Route::post('client',[ClientController::class,'store']);
Route::put('client/{id}',[ClientController::class,'update']);
Route::delete('client/{id}',[ClientController::class,'destroy']);
//Route::post('clients',[ClientsController::class,'store']);
