<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\user;
use App\Http\Requests;
use Input;
use DB;

class login extends Controller
{
    public function authenticate(){
    	$input = Input::all();
    	$validUser = DB::table('users')
    					->where('name', '=', $input['username'])
    					->where('password', '=', $input['password'])
    					->pluck('id');
    	if(empty($validUser) || count($validUser) == 0)
    		return "null";
    	else{
 			$user = user::find($validUser[0]);
    		return $user;
    	}
    }
}
