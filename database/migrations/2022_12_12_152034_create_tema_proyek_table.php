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
        Schema::create('tema_proyek', function (Blueprint $table) {
            $table->id();
                $table->text('tema_proyek');
                $table->text('deskripsi');
                $table->string('kelas');
                $table->enum('periode_keterangan', ['Tengah', 'Akhir']);
                $table->string('semester');
                $table->string('tahunajaran');

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
        Schema::dropIfExists('tema_proyek');
    }
};
