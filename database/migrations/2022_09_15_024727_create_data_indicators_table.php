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
        Schema::create('data_indicators', function (Blueprint $table) {
            $table->id();

            $table->string('area');
            $table->string('development');
            $table->string('indicators');
            $table->string('jenjang');
            $table->string('periode');
            $table->string('semester');
            $table->string('tahunajaran');

            $table->foreignId('area_id');
            $table->foreignId('development_id');
            $table->foreignId('jenjang_id');
            $table->foreignId('master_id');
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
        Schema::dropIfExists('data_indicators');
    }
};
