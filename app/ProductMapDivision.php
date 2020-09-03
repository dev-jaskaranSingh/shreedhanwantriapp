<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use CoreSolutions\CoreAdmin\Observers\UserActionsObserver;


use Illuminate\Database\Eloquent\SoftDeletes;

class ProductMapDivision extends Model {

    // use SoftDeletes;

    /**
    * The attributes that should be mutated to dates.
    *
    * @var array
    */
    // protected $dates = ['deleted_at'];

    protected $table    = 'productmapdivision';
    
    protected $fillable = [
      'product_id',
      'division_id'
    ];
    
    public function division()
    {
        return $this->belongsTo('App\Divisions' ,'division_id', 'id' );
    }
    
    public function product()
    {
        return $this->belongsTo('App\Product' , 'product_id' ,'id');
    }
}