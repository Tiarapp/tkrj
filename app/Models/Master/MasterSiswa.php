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

    protected $table = 'master_siswa';

    protected $fillable = [
       'tahunajaran_id', 'tahunajaran', 'pendaftaran_id', 'pendaftaran', 'nis','nik', 'nama', 'status', 'tahun_keluar'
    ];
}
