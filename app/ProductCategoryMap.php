<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use CoreSolutions\CoreAdmin\Observers\UserActionsObserver;
use Illuminate\Database\Eloquent\SoftDeletes;

class ProductCategoryMap extends Model {

    protected $table    = 'productCategoryMap';
    protected $fillable = [
        'cat_id',
        'product_id'
    ];
    public function category()
    {
    	return $this->belongsTo('App\Category' , 'cat_id' , 'id');
    }
}