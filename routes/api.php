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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix' => 'v1' ] , function(){

	Route::get('get/list/divisions' , 		['as' => 'get.list.division' , 'uses' => 'ApiController@getListDivisions' ]);

	Route::POST('user/change/password' , 	[ 'as' => 'user.change.password' , 'uses' => 'ApiController@userChangePassword']);
	Route::POST('user/login' , 				[ 'as' => 'login.user' , 'uses' => 'ApiController@loginUser']);
	Route::GET('get/users' , 				[ 'as' => 'get.users' , 'uses' => 'ApiController@getUsers']);
	Route::GET('get/division/{userId}' , 	[ 'as' => 'get.divisions' , 'uses' => 'ApiController@getDivisions']);
	Route::GET('get/list/products/{division}/{catType}/{catId}' , [ 'as' => 'get.list.product' , 'uses' => 'ApiController@getListProduct']);
	Route::GET('get/products/images/{type}/{productId}' , [ 'as' => 'get.product.image' , 'uses' => 'ApiController@getProductImage']);
	Route::GET('get/products/list' , 			[ 'as' => 'get.products.list' , 'uses' => 'ApiController@getProductsList']);
	Route::GET('get/products/map/attachment' , 	[ 'as' => 'get.products.map.attachment' , 'uses' => 'ApiController@getProductsMapAttachment']);
	Route::GET('get/product/map/division' , 	[ 'as' => 'get.product.map.division' , 'uses' => 'ApiController@getProductMapDivision']);
	Route::GET('get/user/division/map' , 		[ 'as' => 'get.user.division.map' , 'uses' => 'ApiController@getUserDivisionMap']);
	Route::POST('update/user/token' , 			[ 'as' => 'update.user.token' , 'uses' => 'ApiController@updateUserToken']);
	Route::GET('get/message/{notifId}' , 		[ 'as' => 'get.message' , 'uses' => 'ApiController@getMessage']);
	Route::GET('get/message/by/user/{userId}' ,	[ 'as' => 'get.message.user' , 'uses' => 'ApiController@getMessagebyuser']);

	Route::GET('get/circulus' , 				[ 'as' => 'get.circulus' , 'uses' => 'ApiController@getCirculus']);
	Route::GET('get/price/list' , 				[ 'as' => 'get.price.list' , 'uses' => 'ApiController@priceList']);

	Route::GET('/get/circulus/division/{id}' , 	[ 'as' => 'get.circulus.division' , 'uses' => 'ApiController@getCirculusDivision']);
	Route::GET('get/price/list/division/{id}' , [ 'as' => 'get.price.list.division' , 'uses' => 'ApiController@priceListDivision']);
	Route::GET('get/product/by/cat/{categoryType}/{category}' , [ 'as' => 'get.product.by.cat' , 'uses' => 'ApiController@getProductByCat']);
	Route::GET('get/category/{categoryType}' , [ 'as' => 'get.category' , 'uses' => 'ApiController@getcategory']);
	Route::GET('get/all/category' , [ 'as' => 'get.all.category' , 'uses' => 'ApiController@getAllCategory']);
	Route::GET('get/all/product/category' , [ 'as' => 'get.all.product.category' , 'uses' => 'ApiController@getAllProductCategory']);
	
	
});	