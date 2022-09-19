<?php

namespace App\Models\Nilai;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class nilai_hadist extends Model
{
    use HasFactory;

    protected $table = 'nilai_hadist';

    protected $fillable = [
        'id', 'nis', 'nama', 'kelas', 'nilai', 'indicators', 'jenjang', 'periode_keterangan', 'murid_id', 'kelas_id', 'jenjang_id', 'areas_id', 'development_id', 'indicators_id', 'periode_id', 'created_at', 'updated_at'
    ];
}
