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
        Schema::create('data_cp', function (Blueprint $table) {
            $table->id();
            $table->string('nama_cp')->nullable();
            $table->string('status_aktif')->nullable();
            $table->string('keterangan')->nullable();
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
        Schema::dropIfExists('data_cp');
    }
};
