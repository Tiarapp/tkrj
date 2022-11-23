<?php

namespace App\Models\Rekap;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class rekap_akademik extends Model
{
    use HasFactory;
    protected $table ='rekap_akademik';
    protected $fillable = ['id', 'nis', 'nama', 'kelas', 'jenjang', 'cp', 'narasi', 'saran_tema', 'saran_ortu', 'periode_keterangan', 'tahunajaran', 'murid_id', 'kelas_id', 'periode_id', 'created_at', 'updated_at'];
}
