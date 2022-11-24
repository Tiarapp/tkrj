<?php

namespace App\Models\Walikelas;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class perkembangan extends Model
{
    use HasFactory;
    protected $table = 'nilai_perkembangan';

    protected $fillable = [
        'id', 'nis', 'nama', 'kelas', 'master_kategori', 'master_perkembangan', 'nilai', 'periode_keterangan', 'semester', 'tahunajaran', 'murid_id', 'kelas_id', 'jenjang_id', 'master_kategori_id', 'master_perkembangan_id', 'periode_id', 'created_at', 'updated_at'
    ];
}
