<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterSiswa extends Model
{
    use HasFactory;

    /**
    * fillable
    *
    * @var array
    */

    protected $table = 'master_siswas';

    protected $fillable = [
        'nis','nik', 'nama_siswa', 'status', 'tahun_masuk', 'tahun_keluar'
    ];
}
