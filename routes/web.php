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

Route::get('/', function () {
    return view('welcome');
});


Auth::routes();
Route::resource('/wiki','WikiController');
Route::resource('/blog','BlogController');
Route::get('/blog', 'BlogController@index')->name('blog');
Route::get('/wiki', 'WikiController@index')->name('wiki');
Route::get('/home', 'HomeController@index')->name('home');
//Route::resource('/wiki', 'WikiController');
