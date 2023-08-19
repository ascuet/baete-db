<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;
use DB;
class ExcelController extends Controller
{
    public function welcome(){
        return view('welcome');
    }
    public function import() 
    {
        $data = Excel::toArray([],request()->file('file'));

        $count_students_with_heading = count($data[0]); 

        $headingRow = $data[0][0]; // id, name, course, session, section, type, co1, co2, co3

       

        $length_of_attributes = count($headingRow); // 9

        $students_data = $data[0]; // heading and students information

        foreach($students_data as $key=>$student){
            if($key==0){ // the first row contains headings
                $headingRow = $student;
                // dd($headingRow[0]); // ID
            }
            else{
                $student_id = $student[0];
                // dd($student_id);

                // if($student_id){
                //     echo $student_id;
                //     echo '<br>';
                // }
                // else {
                //     echo 'NULL';
                // }
                if(!$student_id){
                    break;
                }


                if(Str::endsWith($student_id, '-')){
                    $student_id = Str::replace('-', '', $student_id);
                }
                $name = $student[1];
                if(Str::endsWith($name, ' <R>')){
                    $name = Str::replace(' <R>', '', $name);
                }
                
                $course = $student[2];
                $semester = $student[3];
                $year = $student[4];
                $type = $student[5];
                $section = $student[6];
                $pos = [];
                $keys_arr = [];
                $po1 = $po2 = $po3 = $po4 = $po5 = $po6 = $po7 = $po8 = $po9 = $po10 = $po11 = $po12 = NULL;
                for($i=7; $i < $length_of_attributes; $i++){
                    $arr = array('name'=>$headingRow[$i], 'value'=>$student[$i]);
                    array_push($pos, $arr);
                    array_push($keys_arr, $headingRow[$i]);
                    // $po1 = ($headingRow[$i]=="PO1") ? $student[$i] : NULL;
                    // $po2 = ($headingRow[$i]=="PO2") ? $student[$i] : NULL;
                    if($headingRow[$i]=="PO1"){
                        $po1 = $student[$i];
                    }
                    else if($headingRow[$i]=="PO2"){
                        $po2 = $student[$i];
                    }
                    else if($headingRow[$i]=="PO3"){
                        $po3 = $student[$i];
                    }
                    else if($headingRow[$i]=="PO4"){
                        $po4 = $student[$i];
                    }
                    else if($headingRow[$i]=="PO5"){
                        $po5 = $student[$i];
                    }
                    else if($headingRow[$i]=="PO6"){
                        $po6 = $student[$i];
                    }
                    else if($headingRow[$i]=="PO7"){
                        $po7 = $student[$i];
                    }
                    else if($headingRow[$i]=="PO8"){
                        $po8 = $student[$i];
                    }
                    else if($headingRow[$i]=="PO9"){
                        $po9 = $student[$i];
                    }
                    else if($headingRow[$i]=="PO10"){
                        $po10 = $student[$i];
                    }
                    else if($headingRow[$i]=="PO11"){
                        $po11 = $student[$i];
                    }
                    else if($headingRow[$i]=="PO12") {
                        $po12 = $student[$i];
                    }
                }
                $pos_arr = $pos;

                $pos = json_encode($pos);

                DB::table('student_infos')->insert([
                    'roll' => $student_id,
                    'name' => $name,'course' => $course,'semester' => $semester,
                    'year' => $year,'type' => $type,'section' => $section,
                    'pos' => $pos,'po1' => $po1,'po2' => $po2,'po3' => $po3,
                    'po4' => $po4,'po5' => $po5,'po6' => $po6,
                    'po7' => $po7,'po8' => $po8,'po9' => $po9,
                    'po10' => $po10,'po11' => $po11,'po12' => $po12
                ]);
            } 
        }
        
    }
}
