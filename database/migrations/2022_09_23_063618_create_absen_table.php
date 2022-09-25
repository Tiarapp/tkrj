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
        Schema::create('absen', function (Blueprint $table) {
            $table->id();

            $table->string('nis');
            $table->string('nama');
            $table->string('kelas');
            $table->string('jenjang');
            $table->string('ijin')->nullable();
            $table->string('sakit')->nullable();
            $table->string('alpha')->nullable();
            $table->enum('periode_keterangan', ['Tengah', 'Akhir']);

            $table->foreignId('murid_id');
            $table->foreignId('kelas_id');
            $table->foreignId('jenjang_id');
            $table->foreignId('periode_id');

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
        Schema::dropIfExists('absen');
    }
};
