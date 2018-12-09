<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Setting;
use Session;

class SettingsController extends Controller
{
   public function __construct(){


   	 $this->middleware('admin');
   }
   


   public function index(){
   	return view('admin.settings.settings')->with('settings',Setting::first());
   }



    public function update(){

    $this->validate(request(),[
'site_name'=>'required',
'address'=>'required',
'contact_number'=>'required',
'email_contact'=>'required'
    ]);
    	$settings=Setting::first();

    	$settings->site_name=request()->site_name;
    	$settings->address=request()->address;
    	$settings->contact_number=request()->contact_number;
    	$settings->email_contact=request()->email_contact;

    	$settings->save();
Session::flash('success','Blog 	Setting Update Successfully!');

return redirect()->back();

    }
}
