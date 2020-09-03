<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use CoreSolutions\CoreAdmin\Observers\UserActionsObserver;


use Illuminate\Database\Eloquent\SoftDeletes;

class Circulus extends Model {

    use SoftDeletes;

    /**
    * The attributes that should be mutated to dates.
    *
    * @var array
    */
    protected $dates = ['deleted_at'];

    protected $table    = 'circulus';
    
    protected $fillable = ['attachment','division'];
    

    public static function boot()
    {
        parent::boot();

        Circulus::observe(new UserActionsObserver);
    }
    
    
    
    
}