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
        Schema::create('master_periode', function (Blueprint $table) {
            $table->id();
            $table->foreignId('tahunajaran_id');
            $table->integer('tahunmulai');
            $table->integer('tahunselesai');
            $table->foreignId('semester_id');
            $table->string('semester');
            $table->enum('periode', ['PTS', 'PAS']);
            $table->enum('status', ['0', '1'])->default('0');

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
        Schema::dropIfExists('master_periode');
    }
};
