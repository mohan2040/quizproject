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

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/questionset', 'QuestionSetController@index')->name('questionset.index');
Route::get('/create', 'QuestionSetController@create')->name('questionset.create');
Route::post('/create','QuestionSetController@store')->name('questionset.store');
Route::get('/{id}/edit','QuestionSetController@edit')->name('questionset.edit');
Route::post('/{id}/update','QuestionSetController@update')->name('questionset.update');
Route::DELETE('/destroy', 'QuestionSetController@destroy')->name('questionset.destroy');

Route::get('/quiz_start', 'QuestionSetController@quiz_start')->name('questionset.quiz_start');

Route::post('/quiz_start','QuestionSetController@quiz_store')->name('questionset.quiz_store');
Route::get('/quiz_result','QuestionSetController@quiz_results')->name('questionset.quiz_result');

Route::get('/particular_result','QuestionSetController@particular_results')->name('questionset.particular_result');

Route::get('/{id}/preview','QuestionSetController@preview')->name('questionset.preview');
