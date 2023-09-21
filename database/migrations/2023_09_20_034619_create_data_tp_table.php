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
        Schema::create('data_tp', function (Blueprint $table) {
            $table->id();
            $table->string('capaian_pembelajaran')->nullable();
            $table->string('tujuan_pembelajaran')->nullable();
            $table->string('status_aktif')->nullable();
            $table->foreignId('cp_id')->nullable();
            $table->foreignId('tahunajaran_id')->nullable();
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
        Schema::dropIfExists('data_tp');
    }
};
