<?php

namespace App\Models\Walikelas;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class nilai_proyek extends Model
{
    use HasFactory;

    protected $table = 'nilai_proyek';

    protected $fillable = [
        'nis', 'nama', 'kelas', 'tema_proyek', 'detail_proyek', 'catatan_proyek', 'periode_keterangan', 'semester', 'tahunajaran', 'murid_id', 'kelas_id', 'tema_proyek_id', 'periode_id',
    ];
}
