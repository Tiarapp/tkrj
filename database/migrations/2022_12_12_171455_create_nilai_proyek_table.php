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
        Schema::create('nilai_proyek', function (Blueprint $table) {
            $table->id();
            $table->string('nis');
            $table->string('nama');
            $table->string('kelas');
            $table->text('tema_proyek');
            $table->text('detail_proyek');
            $table->text('catatan_proyek');
            $table->enum('periode_keterangan', ['Tengah', 'Akhir']);
            $table->string('semester');
            $table->string('tahunajaran');

            $table->foreignId('murid_id');
            $table->foreignId('kelas_id');
            $table->foreignId('tema_proyek_id');
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
        Schema::dropIfExists('nilai_proyek');
    }
};
