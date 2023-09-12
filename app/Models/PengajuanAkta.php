<?php

namespace App\Models;

use App\Http\Services\ReformatDate;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PengajuanAkta extends Model
{
    use HasFactory;
    protected $table = 'pengajuan_akta';

    protected $fillable = [
        'anggota_id',
        'nama_anak',
        'surat_bidan',
        'tempat_lahir',
        'tanggal_lahir',
        'pengantar_rw',
        'no_pengajuan',
        'status',
    ];

    public function anggotaKeluarga()
    {
        return $this->belongsTo(AnggotaKeluarga::class, 'anggota_id');
    }

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($model) {
            $model->no_pengajuan = (string) \Illuminate\Support\Str::uuid();
        });
    }


    protected function createdAt(): Attribute
    {
        return Attribute::make(
            get: fn (string $value) => ReformatDate::updateDateTimeTimezone($value),
        );
    }

    protected function updatedAt(): Attribute
    {
        return Attribute::make(
            get: fn (string $value) => ReformatDate::updateDateTimeTimezone($value),
        );
    }

    public function suratKeluar()
    {
        return $this->morphOne(SuratKeluar::class, 'surat');
    }

    public function penolakan()
    {
        return $this->morphOne(Penolakan::class, 'surat');
    }
}
