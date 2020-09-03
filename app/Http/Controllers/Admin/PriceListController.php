<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\PriceList;
use App\Divisions;
use App\Http\Requests\CreatePriceListRequest;
use App\Http\Requests\UpdatePriceListRequest;
use Illuminate\Http\Request;
use App\Http\Controllers\Traits\FileUploadTrait;
use Session;

class PriceListController extends Controller {

	/**
	 * Display a listing of pricelist
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
    	$divisions = Divisions::pluck('title' , 'id');
    	if($divisions->count()){
    		$division = $divisions->toArray();
    	}else{
    		$division = [];
    	}
        $pricelist = PriceList::all();

		return view('admin.pricelist.index', compact('pricelist' , 'division'));
	}

	/**
	 * Show the form for creating a new pricelist
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
		$division = Divisions::get();

	    return view('admin.pricelist.create' , compact('division'));
	}

	/**
	 * Store a newly created pricelist in storage.
	 *
     * @param CreatePriceListRequest|Request $request
	 */
	public function store(CreatePriceListRequest $request)
	{
	    $request = $this->saveFiles($request);	
	    $divisionProduct = PriceList::where(['division' => $request->division])->get();
	    if( $divisionProduct->count() > 0 ){
	    	unset($request['_token']);
	    	PriceList::where(['division' => $request->division ])->update($request->all());
	    }else{
			PriceList::create($request->all());
	    }
		Session::flash('message' , 'Price List created successfully');
		return redirect()->route(config('coreadmin.route').'.pricelist.index');
	}

	/**
	 * Show the form for editing the specified pricelist.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$pricelist = PriceList::find($id);
	    
	    
		return view('admin.pricelist.edit', compact('pricelist'));
	}

	/**
	 * Update the specified pricelist in storage.
     * @param UpdatePriceListRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdatePriceListRequest $request)
	{
		$pricelist = PriceList::findOrFail($id);

        $request = $this->saveFiles($request);

		$pricelist->update($request->all());
		Session::flash('message' , 'Price List updated successfully');

		return redirect()->route(config('coreadmin.route').'.pricelist.index');
	}

	/**
	 * Remove the specified pricelist from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		PriceList::destroy($id);
		Session::flash('message' , 'Price List deleted successfully');

		return redirect()->route(config('coreadmin.route').'.pricelist.index');
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
            PriceList::destroy($toDelete);
        } else {
            PriceList::whereNotNull('id')->delete();
        }

        return redirect()->route(config('coreadmin.route').'.pricelist.index');
    }

}
