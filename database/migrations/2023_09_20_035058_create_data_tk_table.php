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
        Schema::create('data_tk', function (Blueprint $table) {
            $table->id();
            $table->string('tujuan_pembelajaran')->nullable();
            $table->string('kode_referensi')->nullable();
            $table->string('no')->nullable();
            $table->string('tujuan_kegiatan')->nullable();
            $table->foreignId('jenjang_id')->nullable();
            $table->string('jenjang')->nullable();
            $table->string('status_aktif')->nullable();
            $table->foreignId('cp_id')->nullable();
            $table->foreignId('tp_id')->nullable();
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
        Schema::dropIfExists('data_tk');
    }
};
