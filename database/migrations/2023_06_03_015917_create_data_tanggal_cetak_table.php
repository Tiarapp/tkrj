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
        Schema::create('data_tanggal_cetak', function (Blueprint $table) {
            $table->id();
            $table->string('tanggal_cetak');
            $table->enum('periode_keterangan', ['Tengah', 'Akhir']);
            $table->foreignId('master_periode_id');
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
        Schema::dropIfExists('data_tanggal_cetak');
    }
};
