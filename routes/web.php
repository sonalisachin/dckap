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

Route::get('/','Shop\HomeController@index'); 
Route::get('/checkout','Shop\HomeController@cartCheckout')->name('cart.checkout');
Route::post('/userdata','Shop\HomeController@userData')->name('cart.userdata');
Route::get('/cart','Shop\HomeController@cartList')->name('cart.list');
Route::post('/cart','Shop\HomeController@addToCart')->name('cart.store');
Route::post('/update-cart','Shop\HomeController@updateCart')->name('cart.update');
Route::post('/remove','Shop\HomeController@removeCart')->name('cart.remove');
Route::post('/clear','Shop\HomeController@clearAllCart')->name('cart.clear');