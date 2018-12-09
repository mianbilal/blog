<?php

use Illuminate\Database\Seeder;

class SettingsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       \App\Setting::create([
           'site_name'=>"My Blog",
           'contact_number'=>'042 777 333 47',
           'email_contact'=>'info_blog@laravel.com',
           'address'=>'Lahore,Pakistan. 54000',
           
       ]);
    }
}
