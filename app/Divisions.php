<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use CoreSolutions\CoreAdmin\Observers\UserActionsObserver;


use Illuminate\Database\Eloquent\SoftDeletes;

class Divisions extends Model {

    use SoftDeletes;

    /**
    * The attributes that should be mutated to dates.
    *
    * @var array
    */
    protected $dates = ['deleted_at'];

    protected $table    = 'divisions';
    
    protected $fillable = [
          'title',
          'desc',
          'image'
    ];
    

    public static function boot()
    {
        parent::boot();

        Divisions::observe(new UserActionsObserver);
    }
    
    
    
    
}