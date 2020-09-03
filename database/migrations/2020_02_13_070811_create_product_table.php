<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Eloquent\Model;

class CreateProductTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Model::unguard();
        Schema::create('product',function(Blueprint $table){
            $table->increments("id");
            $table->string("title");
            $table->text("description");
            $table->string("price")->nullable();
            $table->string("unit")->nullable();
            $table->string("qty")->nullable();
            $table->string("image");
            $table->string("division");
            $table->string("visual");
            $table->string("lbl");
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('product');
    }

}