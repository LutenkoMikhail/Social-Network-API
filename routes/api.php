<?php

use Illuminate\Http\Request;

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
/*
|--------------------------------------------------------------------------
| Register
|--------------------------------------------------------------------------
*/
Route::post('register', 'API\RegisterController@register');

/*
|--------------------------------------------------------------------------
| Users
|--------------------------------------------------------------------------
*/
Route::get('/users', 'API\UserController@index')->middleware('auth:api');

/*
|--------------------------------------------------------------------------
| Friends
|--------------------------------------------------------------------------
*/

Route::get('/friends', 'API\FriendController@index')->middleware('auth:api');
Route::get('/friends/add/{user}', 'API\FriendController@addFriend')->middleware('auth:api');
Route::get('/friends/requests/accept/{user}', 'API\FriendController@acceptFriend')->middleware('auth:api');
Route::get('/friends/requests/delete/{user}', 'API\FriendController@deleteAcceptFriend')->middleware('auth:api');

