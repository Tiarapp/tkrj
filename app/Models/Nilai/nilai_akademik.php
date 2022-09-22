<?php

namespace App\Models\Nilai;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class nilai_akademik extends Model
{
    use HasFactory;

    protected $table = 'nilai_akademik';

    protected $fillable = [
        'id', 'nis', 'nama', 'kelas', 'jenjang', 'cp', 'tp', 'tk', 'tema', 'periode_keterangan', 'murid_id', 'kelas_id', 'jenjang_id', 'cp_id', 'tp_id', 'tk_id', 'tema_id', 'periode_id', 'created_at', 'updated_at'
    ];
}
