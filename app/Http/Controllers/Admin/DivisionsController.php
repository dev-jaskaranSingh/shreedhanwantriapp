<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\Divisions;
use App\Http\Requests\CreateDivisionsRequest;
use App\Http\Requests\UpdateDivisionsRequest;
use Illuminate\Http\Request;
use App\Http\Controllers\Traits\FileUploadTrait;
use Session;


class DivisionsController extends Controller {

	/**
	 * Display a listing of divisions
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $divisions = Divisions::all();

		return view('admin.divisions.index', compact('divisions'));
	}

	/**
	 * Show the form for creating a new divisions
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    return view('admin.divisions.create');
	}

	/**
	 * Store a newly created divisions in storage.
	 *
     * @param CreateDivisionsRequest|Request $request
	 */
	public function store(CreateDivisionsRequest $request)
	{
	    $request = $this->saveFiles($request);
		Divisions::create($request->all());
		Session::flash('message' , 'Division created Successfully');
		
		return redirect()->route(config('coreadmin.route').'.divisions.index');
	}

	/**
	 * Show the form for editing the specified divisions.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$divisions = Divisions::find($id);
	    
	    
		return view('admin.divisions.edit', compact('divisions'));
	}

	/**
	 * Update the specified divisions in storage.
     * @param UpdateDivisionsRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateDivisionsRequest $request)
	{
		$divisions = Divisions::findOrFail($id);

        $request = $this->saveFiles($request);

		$divisions->update($request->all());
		Session::flash('message' , 'Division edited Successfully');

		return redirect()->route(config('coreadmin.route').'.divisions.index');
	}

	/**
	 * Remove the specified divisions from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Divisions::destroy($id);
		Session::flash('message' , 'Division deleted successfully');
		
		return redirect()->route(config('coreadmin.route').'.divisions.index');
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
            Divisions::destroy($toDelete);
        } else {
            Divisions::whereNotNull('id')->delete();
        }

        return redirect()->route(config('coreadmin.route').'.divisions.index');
    }

}
