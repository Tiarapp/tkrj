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
        Schema::create('nilai_studentprofile_detail', function (Blueprint $table) {
            $table->id();

            $table->string('indikator');
            $table->enum('nilai', ['vg', 'g', 's', 'ni'])->nullable();

            $table->foreignId('master_indikator_studentprofile_id');
            $table->foreignId('nilai_studentprofile_id');

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
        Schema::dropIfExists('nilai_studentprofile_detail');
    }
};
