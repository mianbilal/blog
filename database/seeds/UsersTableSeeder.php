<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       $user= App\User::create([
'name'=>'Bilal', 
'email'=>   'ali@yahoo.com',
'password'=>bcrypt('password'),
'admin'=>1      
 ]);


        App\Profile::create([
'user_id'=>$user->id,
'avatar'=>'uploads/avatars/11.png',
'about'=>'Asp.net MVC and Laravel Framework Artist.',
'facebook'=>'facebook.com',
'youtube'=>'youtube.com'

     
 ]);
    }
}
