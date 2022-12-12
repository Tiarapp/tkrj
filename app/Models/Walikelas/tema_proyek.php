<?php

namespace App\Models\Walikelas;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tema_proyek extends Model
{
    use HasFactory;
    protected $table = 'tema_proyek';

    protected $fillable = [
        'id', 'tema_proyek', 'deskripsi', 'kelas', 'periode_keterangan', 'semester', 'tahunajaran', 'kelas_id', 'periode_id', 'created_at', 'updated_at'
    ];
}
