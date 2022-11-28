<?php

namespace App\Models\Walikelas;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class studentprofile extends Model
{
    use HasFactory;
    protected $table = 'nilai_studentprofile';

    protected $fillable = [
        'id', 'nis', 'nama', 'kelas', 'periode_keterangan', 'semester', 'tahunajaran', 'murid_id', 'kelas_id', 'jenjang_id', 'periode_id', 'created_at', 'updated_at'
    ];

}
