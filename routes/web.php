<?php

use Illuminate\Support\Facades\Route;

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
/*
Route::get('/', function () {
     return view('welcome');
}); */

/* routes pour les jeux vidéos */
Route::get('/products', 'App\Http\Controllers\ProductController@index')->name('products.index');
Route::get('/products/{id}', 'App\Http\Controllers\ProductController@show')->name('products.show');

// route pour la barre de recherche

Route::get('/search', 'App\Http\Controllers\ProductController@search')->name('products.search');

//Route de la page d'accueil

Route::get('/' , 'App\Http\Controllers\PagesController@index');

//Routes pour les liens de la navbar

Route::get('/about' , 'App\Http\Controllers\PagesController@about');
Route::get('/services' , 'App\Http\Controllers\PagesController@services');
Route::get('/profil','App\Http\Controllers\UserController@profil');
Route::get('/email', 'App\Http\Controllers\EmailController@create');
Route::post('/email', 'App\Http\Controllers\EmailController@sendEmail')->name('send.email');

// Routes pour le panier

Route::get('/panier', 'App\Http\Controllers\CartController@index')->name('cart.index');
Route::post('/panier/ajouter', 'App\Http\Controllers\CartController@store')->name('cart.store');
Route::delete('/panier/{rowId}', 'App\Http\Controllers\CartController@destroy')->name('cart.destroy');

Route::get('/videpanier', function() {
    Cart::destroy();
});

// Routes pour l'authentification

Auth::routes();

// Others routes

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::resource('posts', 'App\Http\Controllers\PostsController');