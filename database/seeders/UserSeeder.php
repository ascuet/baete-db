<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = [
            [
                'name'=>'Asif Iqbal',
                'email'=>'asif@gmail.com',
                'password'=>md5('123456'),
                'department_id'=>null,
                'role'=>'Super Admin'
            ],
            [
                'name'=>'Kingshuk Dhar',
                'email'=>'kingshuk@gmail.com',
                'password'=>md5('123456'),
                'department_id'=>1,
                'role'=>'Department Admin'
            ],
            [
                'name'=>'Saifuddin Munna',
                'email'=>'munna@gmail.com',
                'password'=>md5('123456'),
                'department_id'=>2,
                'role'=>'Department Admin'
            ]           
        ];

        DB::table('users')->insert(
            $users
        );
    }
}
