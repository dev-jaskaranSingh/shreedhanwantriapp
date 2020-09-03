<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use CoreSolutions\CoreAdmin\Observers\UserActionsObserver;


use Illuminate\Database\Eloquent\SoftDeletes;

class Notification extends Model {

    use SoftDeletes;

    /**
    * The attributes that should be mutated to dates.
    *
    * @var array
    */
    protected $dates = ['deleted_at'];

    protected $table    = 'notification';
    
    protected $fillable = [
          'title',
          'to',
          'type',
          'message'
    ];
    

    public static function boot()
    {
        parent::boot();

        Notification::observe(new UserActionsObserver);
    }
    
    
    
    
}