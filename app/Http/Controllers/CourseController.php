<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;
use DB;
class CourseController extends Controller
{
    public function create(){
        return view('page.course.create');
    }
    public function store(Request $request){

    }
    public function storeExcel(Request $request){
        $data = Excel::toArray([],request()->file('courses'));
        $course_data = $data[0];
        $count = count($course_data);
        for($i=0; $i < $count; $i++){
            $course = $course_data[$i][0]; // ACC 101(V3) - Basic Accounting (3)
            $course_info = explode("-", $course);
            $code_short_name_version = $course_info[0]; // ACC 101(V3)
            $title_credit = $course_info[1]; // Basic Accounting (3)
            $pos = strpos($code_short_name_version, "(");
            $code = Str::substr($code_short_name_version, 0, $pos);
            $version = Str::substr($code_short_name_version, $pos+1, Str::length($code_short_name_version));
            $version = Str::replace(')', '', $version);
            $version = trim($version);
            $pos = strpos($title_credit, "(");
            $pos_end = strpos($title_credit, ")");
            $title = Str::substr($title_credit, 0, $pos);
            $title = trim($title);
            $len = Str::length($title_credit);
            $credit = Str::substr($title_credit, $pos+1, $pos_end-1);
            $credit = Str::replace(')', '', $credit);
            $department_id = 1;
            DB::table('courses')->insert([
                'name'=>$title,
                'code'=>$code,
                'credit'=>$credit,
                'version'=>$version,
                'department_id'=>$department_id,
                'created_at'=>now(),
                'updated_at'=>now()
            ]);
            return redirect("course/create");
        }
    }
}
