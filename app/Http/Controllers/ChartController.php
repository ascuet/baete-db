<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class ChartController extends Controller
{
    public function chart($roll, $po1, $po2, $po3, $po4, $po5, $po6, $po7, $po8, $po9, $po10, $po11, $po12){
        $student_name = DB::table('student_infos')
                    ->select('name')
                    ->where('roll','=',$roll)
                    ->first();
        $name = $student_name->name;
        return view('chart',compact('roll', 'name', 'po1', 'po2', 'po3', 'po4', 'po5', 'po6', 'po7', 'po8', 'po9', 'po10', 'po11', 'po12'));
    }
}
