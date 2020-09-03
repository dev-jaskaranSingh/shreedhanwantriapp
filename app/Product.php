<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use CoreSolutions\CoreAdmin\Observers\UserActionsObserver;


use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model {

    // use SoftDeletes;

    /**
        * The attributes that should be mutated to dates.
        *
        * @var array
    */
    // protected $dates = ['deleted_at'];

    protected $table    = 'product';
    
    protected $fillable = [
        'title',
        'description',
        'price',
        'unit',
        'qty',
        'image'
    ];
    

    public static function boot()
    {
        parent::boot();

        Product::observe(new UserActionsObserver);
    }
    
    public function division()
    {
      return $this->hasMany('App\ProductMapDivision' , 'product_id' , 'id');
    }
    
    
    public function category()
    {
      return $this->hasMany('App\ProductCategoryMap' , 'product_id' , 'id');
    }
    
    public function Attachment()
    {
      return $this->hasMany('App\ProductMapAttachment' , 'product_id' , 'id');
    }
    
    
}