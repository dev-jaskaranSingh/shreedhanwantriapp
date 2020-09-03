<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\ProductMapDivision;
use App\Divisions;
use App\ProductMapAttachment;
use App\ProductCategoryMap;
use App\Category;
use App\Product;
use App\DivisionMap;
use Hash;
Use DB;
use App\Notification;
use App\Circulus;
use App\PriceList;

class ApiController extends Controller
{
    public function __construct(){
        DB::enableQueryLog();
    }
    
    public function getListDivisions()
    {
        $division = Divisions::get();
        return response()->json(['status' => 'success','message' => 'List divisions' , 'data' => $division] , 200);
    }
    
    public function loginUser( Request $request )
    {
    	$request->validate([
    		'email' => 'required',
    		'password' => 'required'
    	]);

    	$user = User::where([ 'user_id' => $request->email ])->first();
    	if( $user != null ){
    		$checkPassword = Hash::check($request->password , $user->password);
    		if( $checkPassword ){
	    		return response()->json(['status' => 'success','message' => 'Login success' , 'data' => $user] , 200);
    		}else{
	    		return response()->json(['status' => 'fail','message' => 'Wrong user credientals' ] , 500);
    		}
    	}

        return response()->json(['status' => 'fail','message' => 'Wrong user credientals' ] , 500);
        if( $user != null ){
            $checkPassword = Hash::check($request->password , $user->password);
            if( $checkPassword ){
                return response()->json(['status' => 'success','message' => 'Login success' , 'data' => $user] , 200);
            }else{
                return response()->json(['status' => 'fail','message' => 'Wrong user credientals' ] , 500);
            }
        }else{
            $user = User::where( ['mobile' => $request->email] )->first();
            if( $user != null ){
                $checkPassword = Hash::check($request->password , $user->password);
                if( $checkPassword ){
                    return response()->json(['status' => 'success','message' => 'Login Success' , 'data' => $user] , 200);
                }else{
                    return response()->json(['status' => 'fail','message' => 'Wrong user credientals' ] , 500);
                }
            }else{
                return response()->json(['status' => 'fail','message' => 'Wrong user credientals' ] , 500);
            }
        }
    }

    public function userChangePassword(Request $request)
    {
        $user = User::where('id' , $request->userId)->update(['password' => Hash::make($request->newpassword) , 'normalPassword' => $request->newpassword]);
        return response()->json(['status' => 'success','message' => 'Password update successfully' , 'data' => $user] , 200);
    }

    public function getDivisions($userId)
    {
        $user = User::where('id' , $userId)->with(['division' => function($query){
            return $query->with(['division']);
        }])->first();
         
        if( $user ){
            return response()->json(['status' => 'success','message' => 'Division get successfully' , 'data' => $user] , 200);
        }else{
            return response()->json(['status' => 'fail','message' => 'No division available' ] , 500);
        }
    }
    
    public function getUsers()
    {
        $user = User::get();
         
        if( $user ){
            return response()->json(['status' => 'success','message' => 'Division get successfully' , 'data' => $user] , 200);
        }else{
            return response()->json(['status' => 'fail','message' => 'No division available' ] , 500);
        }
    }

    public function getListProduct($division , $catType , $catId)
    {
        $hasProduct = collect();
        $product = collect();
        $getProductId = ProductCategoryMap::select('product_id')->where('cat_id' , $catId)->get()->map(function($query){
            return $query->product_id;
        });

        if( $getProductId->count() > 0 ){
            $prodId = $getProductId->toArray();

            $hasProduct = ProductMapDivision::whereIn('product_id' , $prodId)->select('product_id')->where('division_id' , $division)->get()->map(function($query){
                return $query->product_id;
            });
            $productIds = $hasProduct->toArray();

            $product = Product::whereIn('id' , $productIds)->get()->map(function($query) {
                return $query->id;
            });
            $availableProductIds = $product->toArray(); 
            $product = ProductMapDivision::where('division_id' , $division)->whereIn('product_id' , $availableProductIds)->with(['product' => function($query){
                return $query->with(['Attachment']);
            }])->get();

        }
        return response()->json(['status' => 'success','message' => 'Product list' , 'data' => $product] , 200);





        // $user = User::where('id' , $userId)->with(['division' => function($query){
        //     return $query->with(['division']);
        // }])->first();

        // if( $user ){
        // }else{
        //     return response()->json(['status' => 'fail','message' => 'No division available' ] , 500);
        // }
    }

    public function getProductImage($type , $productId)
    {
        $product = ProductMapAttachment::where(['product_id' => $productId , 'type' => $type])->get();
        return response()->json(['status' => 'success','message' => 'Product images list' , 'data' => $product] , 200);
    }

    public function getProductsList()
    {
        $product = Product::get();
        return response()->json(['status' => 'success','message' => 'Product images list' , 'data' => $product] , 200);
    }
    
    public function getProductsMapAttachment()
    {
        $productAttachment = ProductMapAttachment::get();
        return response()->json(['status' => 'success','message' => 'Product images list' , 'data' => $productAttachment] , 200);
    }
    
    public function getProductMapDivision()
    {
        $productmapdivision = ProductMapDivision::get();
        return response()->json(['status' => 'success','message' => 'Product images list' , 'data' => $productmapdivision] , 200);
    }
    
    public function getUserDivisionMap()
    {
        $getUserDivisionMap = DivisionMap::get();
        return response()->json(['status' => 'success','message' => 'Product images list' , 'data' => $getUserDivisionMap] , 200);
    }

    public function updateUserToken(Request $request)
    {
        $user = User::where(['id' => $request->userId])->update(['remember_token' => $request->token]);
        return response()->json(['status' => 'success','message' => 'toekn update successfully' , 'data' => $user] , 200);
    }

    public function getMessage($notifId)
    {
        $notifirst = Notification::whereId($notifId)->first();
        $userTo = $notifirst->to;

        $notif = Notification::where('to' , $userTo)->orderBy('id' , 'desc')->limit(5)->get();
        return response()->json(['status' => 'success' , 'message' => 'Notification get successfully' , 'data' => $notif] , 200);
    }

    public function getMessagebyuser($userId)
    {
        $userNotification = collect();
        $userNotification = Notification::select('id')->where('to' , $userId)->orderBy('id' , 'DESC')->get()->map(function($query){
            return $query->id;
        });
        $userNotifId = $userNotification->toArray();


        $divisionMap = DivisionMap::where('user_id' , $userId)->get()->map(function($query){
            return $query->division_id;
        });

        $notif = collect();
        if($divisionMap->count() > 0){
            $selectedDivision = $divisionMap->toArray();
            $notif = Notification::where(['type' => 'singleDivision'])->get()->map(function($query){
                return $query->id;
            });
        }

        $mergeArray = array_merge($userNotifId , $notif->toArray());

        $notif = Notification::whereIn('id' , $mergeArray)->orderBy('id' , 'desc')->limit(5)->get();
        return response()->json(['status' => 'success' , 'message' => 'Notification get successfully' , 'data' => $notif] , 200);
    }

    public function getCirculus()
    {
        $circulus = Circulus::orderBy('id' , 'desc')->get();
        return response()->json(['status' => 'success' , 'message' => 'circulus' , 'data' => $circulus] , 200);
    }

    public function getCirculusDivision($division)
    {
        $circulus = Circulus::orderBy('id' , 'desc')->where('division' , $division)->first();
        return response()->json(['status' => 'success' , 'message' => 'circulus' , 'data' => $circulus] , 200);
    }

    public function priceList()
    {
        $circulus = PriceList::orderBy('id' , 'desc')->get();
        return response()->json(['status' => 'success' , 'message' => 'circulus' , 'data' => $circulus] , 200);
    }

    public function priceListDivision($division)
    {
        $circulus = PriceList::orderBy('id' , 'desc')->where('division' , $division )->first();
        return response()->json(['status' => 'success' , 'message' => 'circulus' , 'data' => $circulus] , 200);
    }
    public function getcategory($catType)
    {
        $productAtta = productmapattachment::select('product_id')->where(['type' => $catType])->get()->map(function($query) {
            return $query->product_id;
        }); 

        if( $productAtta->count() > 0 ){
            $productBycat = array_unique($productAtta->toArray());

            $catId = ProductCategoryMap::select('cat_id')->whereIn( 'product_id' , $productBycat )->get()->map(function($query){
                return $query->cat_id;
            });

            if( $catId->count() > 0 ){
                $cat = Category::select('title' , 'id')->whereIn('id',$catId)->get();
                return response()->json(['status' => 'success' , 'message' => 'category list' , 'data' => $cat->toArray()] , 200);
            }else{
                return response()->json(['status' => 'fail','message' => 'something went wrong.' ] , 500);
            }
        }else{
            return response()->json(['status' => 'fail','message' => 'something went wrong.' ] , 500);
        }
    }
    public function getAllCategory()
    {
        $category = Category::all();
        return response()->json(['status' => 'success' , 'message' => 'category list' , 'data' => $category] , 200);
    }
    public function getAllProductCategory()
    {
        $ProductCategoryMap = ProductCategoryMap::all();
        return response()->json(['status' => 'success' , 'message' => 'category list' , 'data' => $ProductCategoryMap] , 200);
    }

}