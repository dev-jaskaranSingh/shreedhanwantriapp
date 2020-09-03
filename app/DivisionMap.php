<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DivisionMap extends Model
{
    protected $table = 'user_division_map';
    protected $fillable = ['user_id','division_id'];

    public function division()
    {
    	return $this->hasMany('App\Divisions' , 'id' ,'division_id');
    }
    public function users()
    {
    	return $this->belongsTo('App\User' , 'user_id', 'id');
    }
}