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
        Schema::create('rekap_akademik', function (Blueprint $table) {
            $table->id();

            $table->string('nis');
            $table->string('nama');
            $table->string('kelas');
            $table->string('jenjang');
            $table->text('cp');
            $table->text('narasi');
            $table->enum('periode_keterangan', ['Tengah', 'Akhir']);
            $table->string('tahunajaran');

            $table->foreignId('murid_id');
            $table->foreignId('kelas_id');
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
        Schema::dropIfExists('rekap_akademik');
    }
};
