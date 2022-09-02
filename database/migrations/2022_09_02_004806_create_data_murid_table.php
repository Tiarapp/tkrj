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
        Schema::create('data_murid', function (Blueprint $table) {
            $table->id();

            $table->string('nis');
            $table->string('nama');
            $table->integer('absen');
            $table->string('kelas');
            $table->string('jenjang');
            $table->string('extra')->nullable();
            $table->string('tahunajaran');
            $table->foreignId('siswa_id');
            $table->foreignId('kelas_id');
            $table->foreignId('jenjang_id');
            $table->string('extra_id')->nullable();
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
        Schema::dropIfExists('data_murid');
    }
};
