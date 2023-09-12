<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('penolakan', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('surat_id');
            $table->string('no_pengajuan');
            $table->text('pesan');
            $table->string('jenis_surat');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('penolakan');
    }
};
