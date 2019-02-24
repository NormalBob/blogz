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

Route::get('/blog/category/{slug?}', 'BlogController@category')->name('category');

Route::get('/blog/article/{slug?}', 'BlogController@article')->name('article');
Route::post('/blog/article/{slug?}/comments', 'Admin\CommentController@store')->name('newComment');

Route::group(['prefix'=>'admin', 'namespace'=>'admin', 'middleware'=>['auth']], function (){
    Route::get('/', 'DashboardController@dashboard')->name('admin.index');
    Route::resource('/category', 'CategoryController', ['as'=>'admin']);
    Route::resource('/article', 'ArticleController', ['as'=>'admin']);
    Route::resource('/comment', 'CommentController', ['as'=>'admin']);
    Route::group(['prefix' => 'user_managment', 'namespace'=>'UserManagment'], function (){
        Route::resource('/users', 'UserController', ['as'=>'admin.user_managment']);
    });
});



Route::get('/', 'BlogController@home')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
