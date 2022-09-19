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
        Schema::create('nilai_tahfidz', function (Blueprint $table) {
            $table->id();

            $table->string('nis');
            $table->string('nama');
            $table->string('kelas');
            $table->text('nilai');
            $table->string('indicators');
            $table->string('jenjang');
            $table->enum('periode_keterangan', ['Tengah', 'Akhir']);

            $table->foreignId('murid_id');
            $table->foreignId('kelas_id');
            $table->foreignId('jenjang_id');
            $table->foreignId('areas_id');
            $table->foreignId('development_id');
            $table->foreignId('indicators_id');
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
        Schema::dropIfExists('nilai_tahfidz');
    }
};
