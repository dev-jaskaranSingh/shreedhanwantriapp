<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\Product;
use App\Divisions;
use App\Category;
use App\ProductCategoryMap;
use App\ProductMapDivision;
use App\ProductMapAttachment;
use App\Http\Requests\CreateProductRequest;
use App\Http\Requests\UpdateProductRequest;
use Illuminate\Http\Request;
use App\Http\Controllers\Traits\FileUploadTrait;
use Intervention\Image\Facades\Image;
use File;
use Session;

class ProductController extends Controller {

	/**
	 * Display a listing of product
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $product = Product::orderBy('id' , 'DESC')->with(['category' => function($query){
        	return $query->with('category');
        } ,'division' => function($query){
        	return $query->with(['division']);
        }])->get();

		return view('admin.product.index', compact('product'));
	}

	/**
	 * Show the form for creating a new product
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
		$Category = Category::all();
		$division = Divisions::pluck('title' , 'id');
	    return view('admin.product.create' , compact('division','Category'));
	}

	/**
	 * Store a newly created product in storage.
	 *
     * @param CreateProductRequest|Request $request
	 */
	public function store(CreateProductRequest $request)
	{
		$request->validate([
			'category' => 'required'
		]);

		$product = Product::create($request->all());
		$product_id = $product->id;
		
		if( array_key_exists('division' , $request->all()) ){
			foreach( $request->division as $k => $v){	
				ProductMapDivision::create([ 'product_id' => $product_id, 'division_id' => $v ]);
			}
		}

		if( array_key_exists('category' , $request->all()) ){
			foreach( $request->category as $k => $v ){
				ProductCategoryMap::create(['product_id' => $product_id, 'cat_id' => $v ]);
			}
		}
		$path = public_path('uploads/product/visual/'.$product_id);
		File::makeDirectory($path, $mode = 0777, true, true);

		if( array_key_exists('visual' , $request->all() ) ){
			foreach($request['visual'] as $k => $v){

				$filenamewithextension = $v->getClientOriginalName();
				$filename = pathinfo($filenamewithextension, PATHINFO_FILENAME);
				$extension = $v->getClientOriginalExtension();
				$filenametostore = $filename.'_'.time().'.'.$extension;
				$updatedFileName = $filename.'_'.time().'.'.$extension;
				$v->move('uploads/product/visual/'.$product_id,$filenametostore);

				$filepath = public_path('uploads/product/visual/'.$product_id.'/'.$filenametostore);
				$mime = mime_content_type($filepath);

				$output = new \CURLFile($filepath, $mime, $filenametostore);
				$data = ["files" => $output];
				 
				$ch = curl_init();
				curl_setopt($ch, CURLOPT_URL, 'http://api.resmush.it/?qlty=80');
				curl_setopt($ch, CURLOPT_POST,1);
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
				curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
				curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
				$result = curl_exec($ch);
				if (curl_errno($ch)) {
				    $result = curl_error($ch);
				}
				curl_close ($ch);

				$arr_result = json_decode($result);
				// store the optimized version of the image
				$ch = curl_init($arr_result->dest);
				$fp = fopen($filepath, 'wb');
				curl_setopt($ch, CURLOPT_FILE, $fp);
				curl_setopt($ch, CURLOPT_HEADER, 0);
				curl_exec($ch);
				curl_close($ch);
				fclose($fp);

				ProductMapAttachment::create([
					'image' => $updatedFileName,
					'type' => 'visual' ,
					'product_id' => $product_id
				]);

				// return redirect('images/create')->with('success', "Image uploaded successfully.");
				// return back();


				// // $image    = Image::make($visual);
			 //    // Image::make($file)->resize(50, 50)->save(public_path('uploads/thumb') . '/' . $filename);

				// // $name = $visual->getClientOriginalName();


				// // $mimeType = $visual->getMimeType();
				// // $extension = $visual->getClientOriginalExtension();
				// // $size = $visual->getSize();
				// $destinationPath = 'uploads/product/visual/'.$product_id;
				// // $visual->move($destinationPath,$visual->getClientOriginalName());


				// // $name = $visual->getClientOriginalName();
				// $file = $v;
				// $image    = Image::make($v);
				// dd($image);
				// Image::make($file)->resize(50, 50)->save($destinationPath . '/' . $name);
				// dd($image);
				// // $width  = $image->width();
				// // $height = $image->height();
				// // if ($width > $request->{$key . '_w'} && $height > $request->{$key . '_h'}) {
				// //     $image->resize($request->{$key . '_w'}, $request->{$key . '_h'});
				// // } elseif ($width > $request->{$key . '_w'}) {
				// //     $image->resize($request->{$key . '_w'}, null, function ($constraint) {
				// //         $constraint->aspectRatio();
				// //     });
				// // } elseif ($height > $request->{$key . '_w'}) {
				// //     $image->resize(null, $request->{$key . '_h'}, function ($constraint) {
				// //         $constraint->aspectRatio();
				// //     });
				// // }
				// $image->save(public_path('uploads') . '/' . $name);

				// ProductMapAttachment::create([
				// 	'image' => $name,
				// 	'type' => 'visual' ,
				// 	'product_id' => $product_id
				// ]);
			}

		}

		if( array_key_exists('lbl' , $request->all() ) ){
			foreach($request['lbl'] as $k => $v){
				$filenamewithextension = $v->getClientOriginalName();
				$filename = pathinfo($filenamewithextension, PATHINFO_FILENAME);

				$extension = $v->getClientOriginalExtension();

				$filenametostore = $filename.'_'.time().'.'.$extension;
				$updatedFileName = $filename.'_'.time().'.'.$extension;
				$v->move('uploads/product/lbl/'.$product_id,$filenametostore);

				$filepath = public_path('uploads/product/lbl/'.$product_id.'/'.$filenametostore);
				$mime = mime_content_type($filepath);

				$output = new \CURLFile($filepath, $mime, $filenametostore);
				$data = ["files" => $output];
				 
				$ch = curl_init();
				curl_setopt($ch, CURLOPT_URL, 'http://api.resmush.it/?qlty=80');
				curl_setopt($ch, CURLOPT_POST,1);
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
				curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
				curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
				$result = curl_exec($ch);
				if (curl_errno($ch)) {
				    $result = curl_error($ch);
				}
				curl_close ($ch);

				$arr_result = json_decode($result);
				// store the optimized version of the image
				$ch = curl_init($arr_result->dest);
				$fp = fopen($filepath, 'wb');
				curl_setopt($ch, CURLOPT_FILE, $fp);
				curl_setopt($ch, CURLOPT_HEADER, 0);
				curl_exec($ch);
				curl_close($ch);
				fclose($fp);





				// $lbl = $v;
				// $name = $lbl->getClientOriginalName();
				// $extension = $lbl->getClientOriginalExtension();
				// $size = $lbl->getSize();
				// $destinationPath = 'uploads/product/lbl/'.$product_id;

				// $lbl->move($destinationPath,$lbl->getClientOriginalName());

				ProductMapAttachment::create([
					'image' => $updatedFileName,
					'type' => 'lbl' ,
					'product_id' => $product_id
				]);
			}
		}

		if( array_key_exists('image' , $request->all()) ){
	        $request = $this->saveFiles($request);
	        Product::where('id', $product_id)->update(['image' => $request->image]);
		}
		// ProductMapAttachment::create();
		Session::flash('message' , 'Product Added successfully');
		return redirect()->route(config('coreadmin.route').'.product.index');
	}

	/**
		* Show the form for editing the specified product.
		*
		* @param  int  $id
		* @return \Illuminate\View\View
	*/
	public function edit($id)
	{
	    
		$Category = Category::all();
		$division = Divisions::select('title' , 'id')->get();
		$productCat = ProductCategoryMap::where('product_id' , $id)->get()->map(function($query){
			return $query->cat_id;
		});

		

		$selectedProductCat = $productCat->toArray();
		// $selectedProductCat = Category::select('id')->whereIn('id' , $productCat)->get();
		// dd($selectedProductCat);



		$productCategory = ProductCategoryMap::where('product_id' , $id)->with('category')->get()->map(function($query){
			if( $query->category != null ){
				return $query->category->get()->map(function($query2){
					return $query2->title;
				});
			}
		});

		$product = Product::with(['category' => function($query){
			return $query->with('category');
		},'Attachment','division' => function($query){
        	return $query->with(['division']);
        }])->where('id',$id)->first();


		return view('admin.product.edit', compact('product' ,'division' ,'Category','selectedProductCat'));
	}

	/**
		* Update the specified product in storage.
		* @param UpdateProductRequest|Request $request
		*
		* @param  int  $id
	*/
	public function update($id, UpdateProductRequest $request)
	{
		$request->validate([
			'category' => 'required'
		]);

		if( array_key_exists('category' , $request->all()) ){
			ProductCategoryMap::where(['product_id' => $id])->delete();
			
			foreach( $request->category as $k => $v ){
				ProductCategoryMap::create(['product_id' => $id, 'cat_id' => $v ]);
			}
		}

		$product = Product::findOrFail($id);
		if( array_key_exists('image' , $request->all()) ){
	        $request = $this->saveFiles($request);
		}
		if( array_key_exists('division' , $request->all()) ){
			ProductMapDivision::where([ 'product_id' => $id ])->delete();
			foreach( $request->division as $k => $v){	
				ProductMapDivision::create([ 'product_id' => $id, 'division_id' => $v ]);
			}
		}
		$product->update($request->all());

		if( array_key_exists('visual' , $request->all() ) ){
			foreach($request['visual'] as $k => $v){
				$filenamewithextension = $v->getClientOriginalName();
				$filename = pathinfo($filenamewithextension, PATHINFO_FILENAME);
				$extension = $v->getClientOriginalExtension();
				$filenametostore = $filename.'_'.time().'.'.$extension;
				$updatedFileName = $filename.'_'.time().'.'.$extension;
				$v->move('uploads/product/visual/'.$id,$filenametostore);

				$filepath = public_path('uploads/product/visual/'.$id.'/'.$filenametostore);
				$mime = mime_content_type($filepath);

				$output = new \CURLFile($filepath, $mime, $filenametostore);
				$data = ["files" => $output];
				 
				$ch = curl_init();
				curl_setopt($ch, CURLOPT_URL, 'http://api.resmush.it/?qlty=80');
				curl_setopt($ch, CURLOPT_POST,1);
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
				curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
				curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
				$result = curl_exec($ch);
				if (curl_errno($ch)) {
				    $result = curl_error($ch);
				}
				curl_close ($ch);

				$arr_result = json_decode($result);
				// store the optimized version of the image
				$ch = curl_init($arr_result->dest);
				$fp = fopen($filepath, 'wb');
				curl_setopt($ch, CURLOPT_FILE, $fp);
				curl_setopt($ch, CURLOPT_HEADER, 0);
				curl_exec($ch);
				curl_close($ch);
				fclose($fp);

				ProductMapAttachment::create([
					'image' => $updatedFileName,
					'type' => 'visual' ,
					'product_id' => $id
				]);
			}

		}


		if( array_key_exists('lbl' , $request->all() ) ){
			foreach($request['lbl'] as $k => $v){
				$filenamewithextension = $v->getClientOriginalName();
				$filename = pathinfo($filenamewithextension, PATHINFO_FILENAME);

				$extension = $v->getClientOriginalExtension();

				$filenametostore = $filename.'_'.time().'.'.$extension;
				$updatedFileName = $filename.'_'.time().'.'.$extension;
				$v->move('uploads/product/lbl/'.$id,$filenametostore);

				$filepath = public_path('uploads/product/lbl/'.$id.'/'.$filenametostore);
				$mime = mime_content_type($filepath);

				$output = new \CURLFile($filepath, $mime, $filenametostore);
				$data = ["files" => $output];
				 
				$ch = curl_init();
				curl_setopt($ch, CURLOPT_URL, 'http://api.resmush.it/?qlty=80');
				curl_setopt($ch, CURLOPT_POST,1);
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
				curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
				curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
				$result = curl_exec($ch);
				if (curl_errno($ch)) {
				    $result = curl_error($ch);
				}
				curl_close ($ch);

				$arr_result = json_decode($result);
				// store the optimized version of the image
				$ch = curl_init($arr_result->dest);
				$fp = fopen($filepath, 'wb');
				curl_setopt($ch, CURLOPT_FILE, $fp);
				curl_setopt($ch, CURLOPT_HEADER, 0);
				curl_exec($ch);
				curl_close($ch);
				fclose($fp);

				ProductMapAttachment::create([
					'image' => $updatedFileName,
					'type' => 'lbl' ,
					'product_id' => $id
				]);
			}
		}
		
		if( array_key_exists('image' , $request->all()) ){
	        $request = $this->saveFiles($request);
	        Product::where('id', $id)->update(['image' => $request->image]);
		}
		
		Session::flash('message' , 'Product updated successfully');

		return back();
		return redirect()->route(config('coreadmin.route').'.product.index');
	}

	/**
	 * Remove the specified product from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Product::where('id' , $id)->delete($id);
		ProductMapDivision::where('product_id' ,$id)->delete();
		ProductMapAttachment::where('product_id' ,$id)->delete();
		return redirect()->route(config('coreadmin.route').'.product.index');
	}

    /**
     * Mass delete function from index page
     * @param Request $request
     *
     * @return mixed
     */
    public function massDelete(Request $request)
    {
        if ($request->get('toDelete') != 'mass') {
            $toDelete = json_decode($request->get('toDelete'));
            Product::destroy($toDelete);
        } else {
            Product::whereNotNull('id')->delete();
        }

        return redirect()->route(config('coreadmin.route').'.product.index');
    }

    public function deleteProductAttachment($id)
    {
    	ProductMapAttachment::whereId($id)->delete();
    	return back();
    }
    
    public function uploadCSV(Request $request){
        dd($request->all());
        $file = $request->file('image');
   
        $filename = $file->getClientOriginalName();
        $fileExtn = $file->getClientOriginalExtension();
        
        if( $fileExtn == 'csv' ){
            $destinationPath = 'uploads';
            $file->move($destinationPath,$file->getClientOriginalName());
        }
        dd("jhi");
    }
}
