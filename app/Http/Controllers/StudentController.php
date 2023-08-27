<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;
use DB;
class StudentController extends Controller
{
    public function create(){
        return view('page.student.create');
    }
    public function storeExcel(Request $request){
        $batch = $request->batch;
        $data = Excel::toArray([],request()->file('students'));
        $students_data = $data[0];
        $count = count($students_data);
        for($i=0; $i < $count; $i++){
            $roll = $students_data[$i][0];
            if($roll){
                if(Str::length($roll) != 13){
                    $roll = Str::padLeft($roll, 16, '0');
                }
                $name = $students_data[$i][1];
                $department_id = 1;
                DB::table('students')->insert([
                    'name'=>$name,
                    'roll'=>$roll,
                    'department_id'=>$department_id,
                    'batch' => $batch,
                    'created_at'=>now(),
                    'updated_at'=>now()
                ]);
            }   
        } 
        return redirect("student/create");  
    }
    public function allBatches(){
        $batches = DB::select("SELECT DISTINCT(batch), COUNT(roll) as total from students GROUP BY batch");
        return view('page.student.batches', compact('batches'));
    }
    public function batchStudents($batch){
        $students = DB::select("SELECT * FROM students WHERE batch=$batch");
        return view('page.student.students', compact('students'));
    }
}
