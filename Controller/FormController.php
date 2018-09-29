<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use Illuminate\Support\Facades\App;
use App\City;

class FormController extends Controller
{

public function form() {

	    $cities = City::orderByRaw("FIELD(id, '16', '35', '06', '34') DESC")->get();
	    return view('spd.pages.request-a-quote.index',compact('cities'));
    }
}