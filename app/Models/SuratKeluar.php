<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SuratKeluar extends Model
{
    use HasFactory;
    protected $table = 'surat_keluar';
    protected $fillable = ['surat_id', 'no_surat', 'no_pengajuan', 'file', 'jenis_surat'];

    public function surat()
    {
        return $this->morphTo();
    }
}
