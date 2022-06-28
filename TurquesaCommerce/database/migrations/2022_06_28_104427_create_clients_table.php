<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */ 
    public function up()
    {
        Schema::create('clients', function (Blueprint $table) {
            $table->increments('id')->bigInteger();
            
            $table->boolean('admin');
            $table->string('name', 50);
            $table->string('email', 80);
            $table->string('phone', 20);
            $table->string('address', 200);
            $table->date('birth_date');
            $table->string('cpf', 50);
            $table->integer('cart_id')->unsigned()->nullable(false); // coluna da chave estrangeira

            $table->timestamps();

        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('usuarios');
    }
};
