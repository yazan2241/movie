<?php

use App\Models\Product;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\ViewErrorBag;
use Illuminate\Http\Request;



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


Auth::routes();

Route::get('/', [App\Http\Controllers\MovieController::class, 'index'])->name('home');


Route::get('/uploadvideo' , function(){
    return view('uploadVideo');
});
Route::post('/uploadvideo' , [App\Http\Controllers\BotController::class, 'uploadVideo']);

Route::get('uploadmovie' , function(){
    return view('movie');
});


Route::post('uploadmovie' , [App\Http\Controllers\MovieController::class, 'store'])->name('addmovie');

Route::get('movie/{id}' , [App\Http\Controllers\MovieController::class, 'show'])->name('movie');

Route::get('viewmovie/{id}/{link}' , [App\Http\Controllers\MovieController::class, 'viewmovie'])->name('viewmovie');

Route::get('search' , [App\Http\Controllers\MovieController::class, 'search'])->name('search');