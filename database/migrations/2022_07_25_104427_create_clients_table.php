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
            $table->id()->unique();
            $table->string('phone', 20);
            $table->string('address', 200);
            $table->date('birth_date');
            $table->string('cpf', 50);
            $table->foreignId('user_id')          
            ->constrained('users')
            ->onUpdate('CASCADE')
            ->onDelete('CASCADE');
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
        Schema::dropIfExists('clients');
    }
};