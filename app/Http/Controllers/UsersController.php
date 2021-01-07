<?php

namespace App\Http\Controllers;

use App\Role;
use App\User;
use App\Divisions;
use App\DivisionMap;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Auth;


class UsersController extends Controller
{
    /**
     * Show a list of users
     * @return \Illuminate\View\View
     */
    public function index()
    {
        $users = User::orderBy('id', 'DESC')->where('id' , '!=' , Auth::user()->id)->with(['division' => function($query){
            return $query->with(['division']);
        }])->get();

        return view('admin.users.index', compact('users'));
    }

    /**
        * Show a page of user creation
        * @return \Illuminate\View\View
    */
    public function create()
    {
        
        $division = Divisions::pluck('title' , 'id');
        $roles = Role::pluck('title', 'id');

        return view('admin.users.create', compact('roles' , 'division'));
    }

    /**
        * Insert new user into the system
        *
        * @param Request $request
        *
        * @return \Illuminate\Http\RedirectResponse
    */
    public function store(Request $request)
    {
        $request->validate([
            "name" => 'required',
            "email" => 'required|unique:users',
            "mobile" => 'required|unique:users',
            "password" => 'required',
            "division" => 'required',
            "role_id" => 'required',
            'staff_type' => 'required',
            'DOJ' => 'required',
            'head_qtr' => 'required',
            'user_id' => 'required|unique:users',
            'state' => 'required',
        ]);

        $input = $request->all();
        $input['normalPassword'] = $input['password'];
        $input['password'] = Hash::make($input['password']);

        $user = User::create($input);
        $userId = $user->id;

        $divisions = $request->division;
        foreach( $divisions as $k => $v ){
            $division = DivisionMap::create([
                'user_id' => $userId,
                'division_id' => $v
            ]);
        }   

        return redirect()->route('users.index')->withMessage(trans('coreadmin::admin.users-controller-successfully_created'));
    }

    /**
        * Show a user edit page
        *
        * @param $id
        *
        * @return \Illuminate\View\View
    */
    public function edit($id)
    {   

        $selectedDivision = DivisionMap::select('division_id')->where('user_id' , $id)->get()->map( function($query){
            return $query->division_id;
        })->toArray();

        $division = Divisions::select('title' , 'id')->get();
        $user  = User::findOrFail($id);
        $roles = Role::pluck('title', 'id');

        return view('admin.users.edit', compact('user', 'roles','division', 'selectedDivision'));
    }

    /**
     * Update our user information
     *
     * @param Request $request
     * @param         $id
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(Request $request, $id)
    {
         $request->validate([
            "name" => 'required',
            "email" => 'required',
            "mobile" => 'required',
            "division" => 'required',
            "role_id" => 'required',
            'staff_type' => 'required',
            'DOJ' => 'required',
            'head_qtr' => 'required',
            'user_id' => 'required:unique:users',
            'state' => 'required',
        ]);
        $user = User::where('id' ,'!=', $id)->where(['email' => $request->email])->get();

        if( $user->count() > 0 ){
            return back()->withErrors(['Email already taken']);
        }
        $user = User::where('id' ,'!=', $id)->where([ 'mobile' => $request->mobile ])->get();
        if( $user->count() > 0 ){
            return back()->withErrors(['mobile already taken']);
        }
        $user = User::where('id' ,'!=', $id)->where([ 'user_id' => $request->user_id ])->get();
        if( $user->count() > 0 ){
            return back()->withErrors(['UserId already taken']);
        }

        $divisions = $request->division;
        DivisionMap::where(['user_id' => $id])->delete();
        foreach( $divisions as $k => $v ){
            $division = DivisionMap::create([
                'user_id' => $id,
                'division_id' => $v
            ]);
        }   
        
        $user = User::findOrFail($id);
        $input = $request->all();
        if( array_key_exists('password', $request->all()) && $request['password'] != null){
            $input['normalPassword'] = $input['password'];
            $input['password'] = Hash::make($input['password']);
        }else{
            unset($input['password']);
        }
        $user->update($input);

        return redirect()->route('users.index')->withMessage(trans('coreadmin::admin.users-controller-successfully_updated'));
    }

    /**
     * Destroy specific user
     *
     * @param $id
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        $user = User::findOrFail($id);
        User::destroy($id);

        return redirect()->route('users.index')->withMessage(trans('coreadmin::admin.users-controller-successfully_deleted'));
    }
    
    public function uploadCSV(Request $request){

        $file = $request->file('csvfile');
        
        $filename = $file->getClientOriginalName();
        $fileExtn = $file->getClientOriginalExtension();
        
        if( $fileExtn == 'csv' ){
            $destinationPath = 'uploads';
            $file->move($destinationPath,$file->getClientOriginalName());
        }

        if ( !file_exists('uploads/'.$filename) ){
            return FALSE;
        }else{
            $header = NULL;
    		$data = array();
    		if (($handle = fopen('uploads/'.$filename, 'r')) !== FALSE) {
    			while (($row = fgetcsv($handle, 1000, ',')) !== FALSE) {
    				if (!$header){
    				    $header = $row;
    				}else{
    				    $data[] = array_combine($header, $row);
    				}
    			}
    			fclose($handle);
    		}

            foreach ($data as $key => $value) {
                $value['normalPassword'] = $value['password'];
                $value['password'] = Hash::make($value['password']);

                $user = User::create($value);
                $userId = $user->id;

                $divisions = explode(',', $value['division']);
                foreach( $divisions as $k => $v ){
                    $division = DivisionMap::create([
                        'user_id' => $userId,
                        'division_id' => $v
                    ]);
                }  
            }
            return redirect()->route('users.index')->withMessage(trans('coreadmin::admin.users-controller-successfully_created'));
        }
        return redirect()->route('users.index')->withErrors(["CSV File is not correct."]);
    }
    
//     public function csv_to_array($filename = '', $delimiter = ',') {
// 		if (!file_exists($filename) || !is_readable($filename))
// 			return FALSE;

// 		$header = NULL;
// 		$data = array();
// 		if (($handle = fopen($filename, 'r')) !== FALSE) {
// 			while (($row = fgetcsv($handle, 1000, $delimiter)) !== FALSE) {
// 				if (!$header)
// 					$header = $row;
// 				else
// 					$data[] = array_combine($header, $row);
// 			}
// 			fclose($handle);
// 		}
// 		return $data;
// 	}
}