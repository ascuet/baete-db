<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class CalculationForBatch39 extends Controller
{
    public function getData(){    
        $results = DB::select("SELECT DISTINCT(roll)
            FROM student_infos
            where roll IN 
            (SELECT roll FROM student_infos WHERE course='CN' AND semester='Fall' AND year='2023')
            AND roll IN
            (SELECT roll from student_infos WHERE course='CNL' AND semester='Fall' AND year='2023')
            AND roll IN
            (SELECT roll from student_infos WHERE course='SD' AND semester='Fall' AND year='2023')
            AND roll IN
            (SELECT roll from student_infos WHERE course='AI' AND semester='Fall' AND year='2023')
            AND roll IN
            (SELECT roll from student_infos WHERE course='AIL' AND semester='Fall' AND year='2023')
            AND roll IN
            (SELECT roll from student_infos WHERE course='MM' AND semester='Spring' AND year='2023')
            AND roll IN
            (SELECT roll from student_infos WHERE course='MML' AND semester='Spring' AND year='2023')
            AND roll IN
            (SELECT roll from student_infos WHERE course='SEISD' AND semester='Spring' AND year='2023')
            AND roll IN
            (SELECT roll from student_infos WHERE course='SEISDL' AND semester='Spring' AND year='2023')
            AND roll IN
            (SELECT roll from student_infos WHERE course='DM' AND semester='Fall' AND year='2021')
            AND roll IN
            (SELECT roll from student_infos WHERE course='ADA' AND semester='Fall' AND year='2022')
            AND roll IN
            (SELECT roll from student_infos WHERE course='ADAL' AND semester='Fall' AND year='2022')
            ");

            // dd($results);
    
            $students_info = [];
            $student_info = [];
    
            foreach($results as $r){
                $roll = $r->roll;
                $name = $this->findName($roll);

                // dd($name);
    
                $pos_student = $this->calculatePO($roll);
    
                [$pos_total, $count_po] = $this->calcluateTotalPO();  

                // dd($pos_total);
    
                
                $student_info = array(
                    'roll' => $roll,
                    'name' => $name,
                    'po1' => $pos_student[0]->stu_po1, 'po2' => $pos_student[0]->stu_po2,
                    'po3' => $pos_student[0]->stu_po3, 'po4' => $pos_student[0]->stu_po4,
                    'po5' => $pos_student[0]->stu_po5, 'po6' => $pos_student[0]->stu_po6,
                    'po7' => $pos_student[0]->stu_po7, 'po8' => $pos_student[0]->stu_po8,
                    'po9' => $pos_student[0]->stu_po9, 'po10' => $pos_student[0]->stu_po10,
                    'po11' => $pos_student[0]->stu_po11, 'po12' => $pos_student[0]->stu_po12
                );
    
                [$sum_po, $po1_percent, $po2_percent, $po3_percent, $po4_percent, $po5_percent, $po6_percent, $po7_percent,
                $po8_percent, $po9_percent, $po10_percent, $po11_percent, $po12_percent] = $this->calculateSumOfPO($student_info, $pos_total);
    
                $student_info['sum_po'] = $sum_po;
                $student_info['po1_percent'] = $po1_percent; $student_info['po2_percent'] = $po2_percent;
                $student_info['po3_percent'] = $po3_percent; $student_info['po4_percent'] = $po4_percent;
                $student_info['po5_percent'] = $po5_percent; $student_info['po6_percent'] = $po6_percent;
                $student_info['po7_percent'] = $po7_percent; $student_info['po8_percent'] = $po8_percent;
                $student_info['po9_percent'] = $po9_percent; $student_info['po10_percent'] = $po10_percent;
                $student_info['po11_percent'] = $po11_percent; $student_info['po12_percent'] = $po12_percent;
    
                array_push($students_info, $student_info);
            }
            
            return view('data_39', compact('students_info', 'pos_total', 'count_po'));
        }
    
        // Calculate sum of each PO for a specific student
        private function calculatePO($roll){
            $pos_student = DB::select("SELECT 
                    SUM(po1) as stu_po1, SUM(po2) as stu_po2, SUM(po3) as stu_po3, 
                    SUM(po4) as stu_po4, SUM(po5) as stu_po5, SUM(po6) as stu_po6, 
                    SUM(po7) as stu_po7, SUM(po8) as stu_po8, SUM(po9) as stu_po9, 
                    SUM(po10) as stu_po10, SUM(po11) as stu_po11, SUM(po12) as stu_po12
                    FROM student_infos 
                    WHERE roll='".$roll."'  
                    AND 
                    (
                           (course='DM' and semester='Fall' and year='2021')
                        OR (course='ADA' and semester='Fall' and year='2022')
                        OR (course='ADAL' and semester='Fall' and year='2022')
                        OR (course='AI' and semester='Fall' and year='2023')
                        OR (course='AIL' and semester='Fall' and year='2023')
                        OR (course='CN' and semester='Fall' and year='2023')
                        OR (course='CNL' and semester='Fall' and year='2023')
                        OR (course='SD' and semester='Fall' and year='2023')
                        OR (course='MM' and semester='Spring' and year='2023')
                        OR (course='MML' and semester='Spring' and year='2023')
                        OR (course='SEISD' and semester='Spring' and year='2023')
                        OR (course='SEISDL' and semester='Spring' and year='2023')
                    )");
            
            return $pos_student;
        }
    
        // Calculate total po for specific list of courses
        private function calcluateTotalPO(){
            // $pos_total = DB::select("SELECT 
            //     SUM(po1) as tot_po1, SUM(po2) as tot_po2, sum(po3) as tot_po3, 
            //     SUM(po4) as tot_po4, SUM(po5) as tot_po5, SUM(po6) as tot_po6, 
            //     SUM(po7) as tot_po7, SUM(po8) as tot_po8, SUM(po9) as tot_po9, 
            //     SUM(po10) as tot_po10, SUM(po11) as tot_po11, SUM(po12) as tot_po12 
            //     from session_course_pos 
            //     where course in ('DM', 'ADA', 'ADAL')");
    
            // Batch 37
            $pos_total = DB::select("SELECT 
                SUM(po1) as tot_po1, SUM(po2) as tot_po2, sum(po3) as tot_po3, 
                SUM(po4) as tot_po4, SUM(po5) as tot_po5, SUM(po6) as tot_po6, 
                SUM(po7) as tot_po7, SUM(po8) as tot_po8, SUM(po9) as tot_po9, 
                SUM(po10) as tot_po10, SUM(po11) as tot_po11, SUM(po12) as tot_po12 
                from session_course_pos where 
                (course='DM' AND semester='Fall' AND year='2021')
                OR (course='ADA' AND semester='Fall' AND year='2022')
                OR (course='ADAL' AND semester='Fall' AND year='2022')
                OR (course='AI' AND semester='Fall' AND year='2023')
                OR (course='AIL' AND semester='Fall' AND year='2023')
                OR (course='CN' AND semester='Fall' AND year='2023')
                OR (course='CNL' AND semester='Fall' AND year='2023')
                OR (course='SD' AND semester='Fall' AND year='2023')
                OR (course='MM' AND semester='Spring' AND year='2023')
                OR (course='MML' AND semester='Spring' AND year='2023')
                OR (course='SEISD' AND semester='Spring' AND year='2023')
                OR (course='SEISDL' AND semester='Spring' AND year='2023')
                ");
            
            $count_po = 0;
            if($pos_total[0]->tot_po1 > 0){ $count_po += 2;}
            if($pos_total[0]->tot_po2 > 0){ $count_po += 2;}
            if($pos_total[0]->tot_po3 > 0){ $count_po += 2;}
            if($pos_total[0]->tot_po4 > 0){ $count_po += 2;}
            if($pos_total[0]->tot_po5 > 0){ $count_po += 2;}
            if($pos_total[0]->tot_po6 > 0){ $count_po += 2;}
            if($pos_total[0]->tot_po7 > 0){ $count_po += 2;}
            if($pos_total[0]->tot_po8 > 0){ $count_po += 2;}
            if($pos_total[0]->tot_po9 > 0){ $count_po += 2;}
            if($pos_total[0]->tot_po10 > 0){ $count_po += 2;}
            if($pos_total[0]->tot_po11 > 0){ $count_po += 2;}
            if($pos_total[0]->tot_po12 > 0){ $count_po += 2;}

            
    
            return [$pos_total, $count_po];
        }
    
        private function calculateSumOfPO($individual, $total){
            $po1_percent = $po2_percent = $po3_percent = $po4_percent = $po5_percent = $po6_percent 
                = $po7_percent = $po8_percent = $po9_percent = $po10_percent = $po11_percent = $po12_percent = 0;
            if($total[0]->tot_po1 !=0 ){ $po1_percent = $individual['po1'] / $total[0]->tot_po1;}
            if($total[0]->tot_po2 !=0 ){ $po2_percent = $individual['po2'] / $total[0]->tot_po2;}
            if($total[0]->tot_po3 !=0 ){ $po3_percent = $individual['po3'] / $total[0]->tot_po3;}
            if($total[0]->tot_po4 !=0 ){ $po4_percent = $individual['po4'] / $total[0]->tot_po4;}
            if($total[0]->tot_po5 !=0 ){ $po5_percent = $individual['po5'] / $total[0]->tot_po5;}
            if($total[0]->tot_po6 !=0 ){ $po6_percent = $individual['po6'] / $total[0]->tot_po6;}
            if($total[0]->tot_po7 !=0 ){ $po7_percent = $individual['po7'] / $total[0]->tot_po7;}
            if($total[0]->tot_po8 !=0 ){ $po8_percent = $individual['po8'] / $total[0]->tot_po8;}
            if($total[0]->tot_po9 !=0 ){ $po9_percent = $individual['po9'] / $total[0]->tot_po9;}
            if($total[0]->tot_po10 !=0 ){ $po10_percent = $individual['po10'] / $total[0]->tot_po10;}
            if($total[0]->tot_po11 !=0 ){ $po11_percent = $individual['po11'] / $total[0]->tot_po11;}
            if($total[0]->tot_po12 !=0 ){ $po12_percent = $individual['po12'] / $total[0]->tot_po12;}
            
            $sum = 0;
            if($po1_percent>=0.5 ? $sum += 2 : ($po1_percent >= 0.25 ? $sum += 1 : $sum += 0))
            if($po2_percent>=0.5 ? $sum += 2 : ($po2_percent >= 0.25 ? $sum += 1 : $sum += 0))
            if($po3_percent>=0.5 ? $sum += 2 : ($po3_percent >= 0.25 ? $sum += 1 : $sum += 0))
            if($po4_percent>=0.5 ? $sum += 2 : ($po4_percent >= 0.25 ? $sum += 1 : $sum += 0))
            if($po5_percent>=0.5 ? $sum += 2 : ($po5_percent >= 0.25 ? $sum += 1 : $sum += 0))
            if($po6_percent>=0.5 ? $sum += 2 : ($po6_percent >= 0.25 ? $sum += 1 : $sum += 0))
    
            if($po7_percent>=0.5 ? $sum += 2 : ($po7_percent >= 0.25 ? $sum += 1 : $sum += 0))
            if($po8_percent>=0.5 ? $sum += 2 : ($po8_percent >= 0.25 ? $sum += 1 : $sum += 0))
            if($po9_percent>=0.5 ? $sum += 2 : ($po9_percent >= 0.25 ? $sum += 1 : $sum += 0))
            if($po10_percent>=0.5 ? $sum += 2 : ($po10_percent >= 0.25 ? $sum += 1 : $sum += 0))
            if($po11_percent>=0.5 ? $sum += 2 : ($po11_percent >= 0.25 ? $sum += 1 : $sum += 0))
            if($po12_percent>=0.5 ? $sum += 2 : ($po12_percent >= 0.25 ? $sum += 1 : $sum += 0))
    
            return [$sum, $po1_percent, $po2_percent, $po3_percent, $po4_percent, $po5_percent, $po6_percent, $po7_percent,
                    $po8_percent, $po9_percent, $po10_percent, $po11_percent, $po12_percent];
        }
    
        private function findName($roll){
            $results = DB::table('student_infos')->select('name')
                            ->where('roll','=',$roll)
                            ->first();
            $name = $results->name;
            return $name;
        }
}
