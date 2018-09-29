<?php
use App\City;
use Illuminate\Support\Facades\Response;

Route::get('/towns/{id}', function($id)
{
	$towns = City::find($id)->towns;
	return Response::json($towns);
});