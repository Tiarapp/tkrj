<?php

namespace App\Models\Walikelas;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class absen extends Model
{
    use HasFactory;

    protected $table = 'absen';

    protected $fillable = [
        'id', 'nis', 'nama', 'kelas', 'jenjang', 'ijin', 'sakit', 'alpha', 'periode_keterangan', 'murid_id', 'kelas_id', 'jenjang_id', 'periode_id', 'created_at', 'updated_at'
    ];
}
