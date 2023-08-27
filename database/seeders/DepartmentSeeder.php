<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DepartmentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $departments = [
            [
                'name'=>'Department of Computer Science & Engineering',
                'short_name'=>'CSE'
            ],
            [
                'name'=>'Department of Electrical & Electronic Engineering',
                'short_name'=>'EEE',
            ],
            [
                'name'=>'Department of Architecture',
                'short_name'=>'Arch',
            ],
            [
                'name'=>'Department of Economics',
                'short_name'=>'ECO',
            ],
            [
                'name' => 'Department of Sociology and Sustainable Development',
                'short_name' => 'SSD'
            ],
            [
                'name' => 'Department of Law',
                'short_name' => 'LAW'
            ],
            [
                'name' => 'Department of English Language & Literature',
                'short_name' => 'DELL'
            ],
            [
                'name' => 'Department of Fashion Design and Technology',
                'short_name' => 'FDT'
            ],
            [
                'name' => 'Department of Library Science',
                'short_name' => 'LS'
            ],
            [
                'name' => 'Department of Mathematics',
                'short_name' => 'MATH'
            ],
            [
                'name' => 'Department of Public Health',
                'short_name' => 'MPH'
            ],
            [
                'name'=> 'Department of Business Administration',
                'short_name'=>'BBA'
            ]
        ];

        DB::table('departments')->insert(
            $departments
        );
    }
}
