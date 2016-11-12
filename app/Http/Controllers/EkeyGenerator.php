<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\User;
use App\temp_user;
use View;
use Input;
use DB;
use Validator;

class EkeyGenerator extends Controller
{
    public function generateKey()
    {
    	$key = EkeyGenerator::randomKey(20);
    	return View('user', ['key' => $key]);
    }

    public function generateKeyMobile()
    {
        $data = Input::all();
        $details = $data['details'];

        $v = Validator::make($details, [
            'fromdate' => 'required',
            'fromtime' => 'required',
            'todate' => 'required',
            'totime' => 'required',
            'name' => 'required| unique:users,name| unique:temp_user,name',
            'password' => 'required'
            ]);

        if($v->fails())
        {
            return $v->messages()->first();
        }

        $startDate = $details['fromdate'].' '.$details['fromtime'];

        $endDate = $details['todate'].' '.$details['totime'];

        $key = EkeyGenerator::randomKey(20);

        $newkey = new temp_user();
        $newkey->owner_id = $data['id'];
        $newkey->key_id = $key;
        $newkey->name = $details['name'];
        $newkey->password = $details['password'];
        $newkey->startdatetime = $startDate;
        $newkey->enddatetime = $endDate;
        $newkey->status = 1;
        $newkey->save();

        
        return ['key' => $key, 'id' => $newkey->id];
    }

    public function randomKey($length) 
    {
        $str = "";
        $characters = array_merge(range('a','z'), range('0','9'));
        $max = count($characters) - 1;
        for ($i = 0; $i < $length; $i++) {
            $rand = mt_rand(0, $max);
            $str .= $characters[$rand];
        }
        return $str;
    }
}
