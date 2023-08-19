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
        Schema::create('student_infos', function (Blueprint $table) {
            $table->id();
            $table->string('roll');
            $table->string('name');
            $table->string('course');
            $table->string('semester')->nullable();
            $table->integer('year')->nullable();
            $table->string('type')->nullable();
            $table->string('section')->nullable();
            $table->string('po1')->nullable();
            $table->string('po2')->nullable();
            $table->string('po3')->nullable();
            $table->string('po4')->nullable();
            $table->string('po5')->nullable();
            $table->string('po6')->nullable();
            $table->string('po7')->nullable();
            $table->string('po8')->nullable();
            $table->string('po9')->nullable();
            $table->string('po10')->nullable();
            $table->string('po11')->nullable();
            $table->string('po12')->nullable();
            $table->json('pos')->nullable();
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
        Schema::dropIfExists('student_infos');
    }
};
