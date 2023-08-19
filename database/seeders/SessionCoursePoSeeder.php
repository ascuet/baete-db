<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SessionCoursePoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $courses = [
            [
                'course' => 'DM',
                'semester' => 'Fall',
                'year' => '2021',
                'po1' => 8,'po2' => 2,'po3' => NULL, 'po4' => NULL, 
                'po5' => NULL,'po6' => NULL, 'po7' => NULL, 'po8' => NULL,
                'po9' => NULL, 'po10' => NULL, 'po11' => NULL, 'po12' => NULL
            ],
            [
                'course' => 'ADA',
                'semester' => 'Fall',
                'year' => '2022',
                'po1' => 4,'po2' => 2, 'po3' => NULL, 'po4' => NULL,
                'po5' => NULL,'po6' => NULL, 'po7' => NULL,'po8' => NULL, 
                'po9' => NULL,'po10' => NULL, 'po11' => NULL,'po12' => NULL
            ],
            [
                'course' => 'ADAL',
                'semester' => 'Fall',
                'year' => '2022',
                'po1' => 6, 'po2' => NULL, 'po3' => NULL, 'po4' => NULL,
                'po5' => NULL, 'po6' => NULL, 'po7' => NULL,'po8' => NULL,
                'po9' => NULL,'po10' => NULL, 'po11' => NULL,'po12' => NULL
            ],
            [
                'course' => 'CN',
                'semester' => 'Fall',
                'year' => '2022',
                'po1' => 4, 'po2' => NULL, 'po3' => 2, 'po4' => NULL, 
                'po5' => NULL,'po6' => NULL,'po7' => NULL, 'po8' => NULL, 
                'po9' => NULL, 'po10' => NULL, 'po11' => NULL,'po12' => NULL
            ],
            [
                'course' => 'CNL',
                'semester' => 'Fall',
                'year' => '2022',
                'po1' => 4, 'po2' => NULL, 'po3' => NULL,'po4' => NULL, 
                'po5' => 4,'po6' => NULL, 'po7' => NULL, 'po8' => 2,
                'po9' => NULL, 'po10' => NULL, 'po11' => NULL,'po12' => NULL
            ],
            [
                'course' => 'AI',
                'semester' => 'Fall',
                'year' => '2022',
                'po1' => 2, 'po2' => 2, 'po3' => NULL, 'po4' => NULL, 
                'po5' => 2,'po6' => NULL, 'po7' => NULL, 'po8' => NULL, 
                'po9' => NULL, 'po10' => NULL, 'po11' => NULL,'po12' => NULL
            ],
            [
                'course' => 'AIL',
                'semester' => 'Fall',
                'year' => '2022',
                'po1' => NULL, 'po2' => 2, 'po3' => 2,'po4' => NULL, 
                'po5' => 2,'po6' => NULL, 'po7' => NULL, 'po8' => NULL, 
                'po9' => 2, 'po10' => NULL, 'po11' => NULL,'po12' => NULL
            ],
            [
                'course' => 'SD',
                'semester' => 'Fall',
                'year' => '2022',
                'po1' => NULL,'po2' => NULL,'po3' => 4,'po4' => NULL,
                'po5' => NULL,'po6' => NULL,'po7' => NULL,'po8' => 2,
                'po9' => 2,'po10' => NULL,'po11' => NULL,'po12' => 2
            ],
            [
                'course' => 'MM',
                'semester' => 'Spring',
                'year' => '2022',
                'po1' => NULL,'po2' => 2,'po3' => 2,'po4' => NULL,
                'po5' => 2,'po6' => NULL,'po7' => NULL,'po8' => NULL,
                'po9' => 2,'po10' => NULL,'po11' => NULL,'po12' => NULL
            ],
            [
                'course' => 'MML',
                'semester' => 'Spring',
                'year' => '2022',
                'po1' => NULL,'po2' => 2,'po3' => 4,'po4' => NULL,
                'po5' => NULL,'po6' => NULL,'po7' => NULL,'po8' => NULL,
                'po9' => NULL,'po10' => NULL,'po11' => NULL,'po12' => NULL
            ],
            [
                'course' => 'SEISD',
                'semester' => 'Spring',
                'year' => '2022',
                'po1' => 2,'po2' => 2,'po3' => 4, 'po4' => 2,
                'po5' => NULL,'po6' => NULL,'po7' => NULL,'po8' => NULL,
                'po9' => NULL, 'po10' => NULL,'po11' => NULL,'po12' => NULL
            ],
            [
                'course' => 'SEISDL',
                'semester' => 'Spring',
                'year' => '2022',
                'po1' => 2,'po2' => NULL,'po3' => NULL, 'po4' => 2,
                'po5' => 2,'po6' => NULL, 'po7' => NULL,'po8' => NULL,
                'po9' => NULL, 'po10' => NULL,'po11' => NULL,'po12' => NULL
            ],
            [   
                'course' => 'ADA',
                'semester' => 'Fall',
                'year' => '2021',
                'po1' => 2,'po2' => 2,'po3' => 2, 'po4' => 2,
                'po5' => NULL,'po6' => NULL, 'po7' => NULL,'po8' => NULL,
                'po9' => NULL, 'po10' => NULL,'po11' => NULL,'po12' => NULL
            ],
            [   
                'course' => 'ADAL',
                'semester' => 'Fall',
                'year' => '2021',
                'po1' => NULL,'po2' => 2,'po3' => 2, 'po4' => 2,
                'po5' => 2,'po6' => NULL, 'po7' => NULL,'po8' => NULL,
                'po9' => NULL, 'po10' => NULL,'po11' => NULL,'po12' => NULL
            ],
            [   
                'course' => 'DM',
                'semester' => 'Spring',
                'year' => '2022',
                'po1' => 8,'po2' => 2,'po3' => NULL, 'po4' => NULL,
                'po5' => NULL,'po6' => NULL, 'po7' => NULL,'po8' => NULL,
                'po9' => NULL, 'po10' => NULL,'po11' => NULL,'po12' => NULL
            ],
            [   
                'course' => 'SP',
                'semester' => 'Spring',
                'year' => '2022',
                'po1' => 8,'po2' => NULL,'po3' => NULL, 'po4' => NULL,
                'po5' => NULL,'po6' => NULL, 'po7' => NULL,'po8' => NULL,
                'po9' => NULL, 'po10' => NULL,'po11' => NULL,'po12' => NULL
            ],
            [   
                'course' => 'SPL',
                'semester' => 'Spring',
                'year' => '2022',
                'po1' => 6,'po2' => NULL,'po3' => NULL, 'po4' => NULL,
                'po5' => NULL,'po6' => NULL, 'po7' => NULL,'po8' => NULL,
                'po9' => NULL, 'po10' => NULL,'po11' => NULL,'po12' => NULL
            ],
            [
                'course' => 'MM',
                'semester' => 'Fall',
                'year' => '2022',
                'po1' => 6,'po2' => NULL,'po3' => 2,'po4' => NULL,
                'po5' => NULL,'po6' => NULL,'po7' => NULL,'po8' => NULL,
                'po9' => NULL,'po10' => NULL,'po11' => NULL,'po12' => NULL
            ],
            [
                'course' => 'MML',
                'semester' => 'Fall',
                'year' => '2022',
                'po1' => 2,'po2' => NULL,'po3' => 6,'po4' => NULL,
                'po5' => 6,'po6' => NULL,'po7' => NULL,'po8' => NULL,
                'po9' => 2,'po10' => 2,'po11' => NULL,'po12' => NULL
            ],
            [
                'course' => 'SEISD',
                'semester' => 'Fall',
                'year' => '2022',
                'po1' => 2,'po2' => 2,'po3' => 4, 'po4' => 2,
                'po5' => NULL,'po6' => NULL,'po7' => NULL,'po8' => NULL,
                'po9' => NULL, 'po10' => NULL,'po11' => NULL,'po12' => NULL
            ],
            [
                'course' => 'SEISDL',
                'semester' => 'Fall',
                'year' => '2022',
                'po1' => 2,'po2' => NULL,'po3' => NULL, 'po4' => 2,
                'po5' => 2,'po6' => NULL, 'po7' => NULL,'po8' => NULL,
                'po9' => NULL, 'po10' => NULL,'po11' => NULL,'po12' => NULL
            ],
            [
                'course' => 'ADA',
                'semester' => 'Spring',
                'year' => '2022',
                'po1' => 2,'po2' => 2,'po3' => 2, 'po4' => 2,
                'po5' => NULL,'po6' => NULL, 'po7' => NULL,'po8' => NULL,
                'po9' => NULL, 'po10' => NULL,'po11' => NULL,'po12' => NULL
            ],
        ];
        DB::table('session_course_pos')->insert(
           $courses
        );
    }
}
