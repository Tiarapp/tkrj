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
        Schema::create('master_siswa', function (Blueprint $table) {
            $table->id();
            $table->string('tahunajaran');
            $table->string('pendaftaran');
            $table->string('nik');
            $table->string('nis')->unique();
            $table->string('nama');
            $table->date('tahun_keluar')->nullable();
            $table->enum('status', ['Aktif', 'Lulus', 'Pindah'])->default('Aktif');
            $table->string('pendaftaran_id');
            $table->foreignId('tahunajaran_id');
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
        Schema::dropIfExists('master_siswa');
    }
};
