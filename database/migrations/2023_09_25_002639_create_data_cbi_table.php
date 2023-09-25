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
        Schema::create('data_cbi', function (Blueprint $table) {
            $table->id();
            $table->string('cbi');
            $table->enum('status', ['Aktif', 'Non Aktif'])->default('Aktif');
            $table->foreignId('tahunajaran_id')->nullable();
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
        Schema::dropIfExists('data_cbi');
    }
};
