<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\Circulus;
use App\Divisions;
use App\Http\Requests\CreateCirculusRequest;
use App\Http\Requests\UpdateCirculusRequest;
use Illuminate\Http\Request;
use App\Http\Controllers\Traits\FileUploadTrait;
use Session;


class CirculusController extends Controller {

	/**
	 * Display a listing of circulus
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $circulus = Circulus::all();
        $divisions = Divisions::pluck('title' , 'id');
    	if($divisions->count()){
    		$division = $divisions->toArray();
    	}else{
    		$division = [];
    	}
		return view('admin.circulus.index', compact('circulus','division' ));
	}

	/**
	 * Show the form for creating a new circulus
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
        $division = Divisions::get();
	    return view('admin.circulus.create' , compact('division'));
	}

	/**
	 * Store a newly created circulus in storage.
	 *
     * @param CreateCirculusRequest|Request $request
	 */
	public function store(CreateCirculusRequest $request)
	{
	    $request = $this->saveFiles($request);
	    $divisionProduct = Circulus::where(['division' => $request->division])->get();
	    if( $divisionProduct->count() > 0 ){
	    	unset($request['_token']);
	    	Circulus::where(['division' => $request->division ])->update($request->all());
	    }else{
			Circulus::create($request->all());
	    }
		Session::flash('message' , 'Circulus created Successfully');

		return redirect()->route(config('coreadmin.route').'.circulus.index');
	}

	/**
	 * Show the form for editing the specified circulus.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$circulus = Circulus::find($id);
	    
	    
		return view('admin.circulus.edit', compact('circulus'));
	}

	/**
	 * Update the specified circulus in storage.
     * @param UpdateCirculusRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateCirculusRequest $request)
	{
		$circulus = Circulus::findOrFail($id);

        $request = $this->saveFiles($request);

		$circulus->update($request->all());
		Session::flash('message' , 'Circulus updated Successfully');

		return redirect()->route(config('coreadmin.route').'.circulus.index');
	}

	/**
	 * Remove the specified circulus from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Circulus::destroy($id);


		Session::flash('message' , 'Circulus deleted Successfully');

		return redirect()->route(config('coreadmin.route').'.circulus.index');
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
            Circulus::destroy($toDelete);
        } else {
            Circulus::whereNotNull('id')->delete();
        }

        return redirect()->route(config('coreadmin.route').'.circulus.index');
    }

}
