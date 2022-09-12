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
            $table->integer('tahun_masuk');
            $table->string('tahunajaran_masuk');
            $table->string('nis')->unique();
            $table->string('nama');
            $table->string('panggilan');
            $table->enum('jenis_kelamin', ['Laki-Laki', 'Perempuan']);
            $table->string('tempat_lahir');
            $table->string('tanggal_lahir');
            $table->string('alamat');
            $table->string('no_tlp');
            $table->integer('anak_ke');
            $table->integer('nik');
            $table->string('registrasi_akte_kelahiran_anak');
            $table->string('nama_bapak');
            $table->string('pekerjaan_bapak');
            $table->string('nama_ibu');
            $table->string('pekerjaan_ibu');
            $table->integer('pendaftaran_id');
            $table->string('ppdb');
            $table->string('status');
            $table->integer('tahun_keluar');
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
