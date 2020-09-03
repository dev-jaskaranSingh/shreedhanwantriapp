<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\Notification;
use App\User;
use App\Divisions;
use App\DivisionMap;
use App\Http\Requests\CreateNotificationRequest;
use App\Http\Requests\UpdateNotificationRequest;
use Illuminate\Http\Request;
use Session;

class NotificationController extends Controller {

	/**
		* Display a listing of notification
		*
		* @param Request $request
		*
		* @return \Illuminate\View\View
	*/
	public function index(Request $request)
    {
        $notification = Notification::all();
		return view('admin.notification.index', compact('notification'));
	}

	/**
	 * Show the form for creating a new notification
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
		$user = User::where('role_id' ,'!=', 1)->get();
		$divisions = Divisions::get();
	    return view('admin.notification.create' , compact('user' , 'divisions'));
	}

	/**
		* Store a newly created notification in storage.
		*
		* @param CreateNotificationRequest|Request $request
	*/
	// public function store(CreateNotificationRequest $request)
	public function store(Request $request)
	{

		$request->validate([
			'title' => 'required',
			// 'singleDivision' => 'required',
			'notif_type' => 'required',
			'message' => 'required' 
		]);
		$arrayToken = '';
	    if($request->notif_type == 'singluser'){

	    	$request->validate(['userName' => 'required']);
	    	$to = $request->userName;
	    	$users = User::select('remember_token')->whereIn('id' , $to)->get()->map(function($query){
	    		return $query->remember_token;
	    	});
	    	$arrayToken = $users->toArray();
	    }else{
	    	$request->validate(['division' => 'required']);
	    	$to = $request->division;
	    	$userIds = DivisionMap::select('user_id')->whereIn('division_id' , $to)->get()->map(function($query){
	    		return $query->user_id;
	    	})->toArray();



	    	$users = User::select('remember_token')->where('remember_token'  , '!=' , null)->whereIn('id' , array_unique($userIds))->get()->map( function($query) {
	    		return $query->remember_token;
	    	})->toArray();
	    	$arrayToken = $users;
	    }
	    foreach ($to as $key => $value) {
			$notif = Notification::create([
						'title' => $request->title,
						'to' => $value,
						'type' => $request->notif_type,
						'message' => $request->message
					]);
	    }

		Session::flash('message' , 'Notification send Successfully');		
		$this->push_notification_android($request->title , $arrayToken , $request->message , $notif->id);

		return redirect()->route(config('coreadmin.route').'.notification.index');
	}

	public function push_notification_android($title , $device_id,$message,$redirect_url){
        $url = 'https://fcm.googleapis.com/fcm/send';
        $apikey = 'AAAAtGFgWCI:APA91bHLRcB4hEcb4E53Ne7hD2pj60w8yraHLYsidlGMuaFcrdoV4tFNbUPFbGNeeaLqQok6InQyyAgyBpN_dtekS1FvyKXsiiYNOylbKjqe8oSTtBgLm8QU0ChaAIoLYxcK1ntg0Ian';
        
        $fields = array(
            'registration_ids' => $device_id,
            'notification'=>['data' => ['click_action' => 'FCM_PLUGIN_ACTIVITY'] , 'demo' => "Dhanwantri" , 'title' => "Dhanwantri" , 'body' => $message, 'click_action' => 'FCM_PLUGIN_ACTIVITY' , 'sound' => 'default' ,'icon'],
            'data' => [
                // 'message'    => 'This is message',
                // 'title'      => 'This is a title. title',
                // 'subtitle'   => 'This is a subtitle. subtitle',
                // 'tickerText' => 'Ticker text here...Ticker text here...Ticker text here',
                // 'body' => 'This is body',
                'redirect_url' 	=> $redirect_url,
                'vibrate'   	=> 1,
                'sound'     	=> 1,
                'priority' 		=> 1,
                'largeIcon' 	=> 'large_icon',
                'smallIcon' 	=> 'small_icon'
            ]
        );

        //
        $headers = array(
            'Authorization: key=' . $apikey,
            'Content-Type: application/json'
        );
        $ch = curl_init();
        // Set the url, number of POST vars, POST data
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        // Disabling SSL Certificate support temporarly
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
        // Execute post
        $result = curl_exec($ch);

        if ($result === FALSE) {
            die('Curl failed: ' . curl_error($ch));
        }

        // Close connection
        curl_close($ch);
        return false;
    }
	/**
		* Show the form for editing the specified notification.
		*
		* @param  int  $id
		* @return \Illuminate\View\View
	*/
	public function edit($id)
	{
		$notification = Notification::find($id);
	    
	    
		return view('admin.notification.edit', compact('notification'));
	}

	/**
		* Update the specified notification in storage.
		* @param UpdateNotificationRequest|Request $request
		*
		* @param  int  $id
	*/
	public function update($id, UpdateNotificationRequest $request)
	{
		$notification = Notification::findOrFail($id);
		$notification->update($request->all());

		Session::flash('message' , 'Notification updated Successfully');

		return redirect()->route(config('coreadmin.route').'.notification.index');
	}

	/**
	 * Remove the specified notification from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Notification::destroy($id);

		return redirect()->route(config('coreadmin.route').'.notification.index');
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
            Notification::destroy($toDelete);
        } else {
            Notification::whereNotNull('id')->delete();
        }

        return redirect()->route(config('coreadmin.route').'.notification.index');
    }

}
