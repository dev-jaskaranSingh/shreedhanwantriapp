<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use CoreSolutions\CoreAdmin\Observers\UserActionsObserver;


use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends Model {

    use SoftDeletes;

    /**
    * The attributes that should be mutated to dates.
    *
    * @var array
    */
    protected $dates = ['deleted_at'];

    protected $table    = 'category';
    
    protected $fillable = [
        'title',
        'status'
    ];
    

    public static function boot()
    {
        parent::boot();

        Category::observe(new UserActionsObserver);
    }
    
    
    
    
}