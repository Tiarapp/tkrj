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
       'tahunajaran_id', 'tahun_ajaran', 'pendaftaran_id', 'pendaftaran', 'nis','nik', 'nama_siswa', 'status', 'tahun_keluar'
    ];
}
