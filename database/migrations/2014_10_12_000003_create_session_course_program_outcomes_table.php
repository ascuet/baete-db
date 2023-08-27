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
        Schema::create('session_course_program_outcomes', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('department_id')->nullable();
            $table->foreign('department_id')->references('id')->on('departments');
            $table->unsignedBigInteger('session_id')->nullable();
            $table->foreign('session_id')->references('id')->on('sessions');
            $table->unsignedBigInteger('course_id')->nullable();
            $table->foreign('course_id')->references('id')->on('courses');
            $table->string('program_outcome')->nullable();
            $table->integer('program_outcome_value')->nullable();
            $table->integer('po1')->nullable();
            $table->integer('po2')->nullable();
            $table->integer('po3')->nullable();
            $table->integer('po4')->nullable();
            $table->integer('po5')->nullable();
            $table->integer('po6')->nullable();
            $table->integer('po7')->nullable();
            $table->integer('po8')->nullable();
            $table->integer('po9')->nullable();
            $table->integer('po10')->nullable();
            $table->integer('po11')->nullable();
            $table->integer('po12')->nullable();
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
        Schema::dropIfExists('session_course_program_outcomes');
    }
};
