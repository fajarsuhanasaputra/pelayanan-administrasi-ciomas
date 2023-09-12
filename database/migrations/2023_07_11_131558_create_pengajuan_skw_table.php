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
        Schema::create('pengajuan_skw', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger('anggota_id');
$table->string('no_pengajuan')->unique();
            $table->foreign('anggota_id')
                ->references('id')
                ->on('anggota_keluarga')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->string('pengantar_rw');
            $table->string('nama_anak');
            $table->string('nama_wali');
            $table->string('tempat_lahir');
            $table->string('tanggal_lahir');
            $table->string('status')->default('proses')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pengajuan_skw');
    }
};
