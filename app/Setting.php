<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
   protected $fillable=['site_name','contact_number','email_contact','address'];
}
