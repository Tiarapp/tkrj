<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterSiswa extends Model
{
    use HasFactory;
    protected $table ='master_siswa';
    protected $fillable = ['id', 'tahunajaran_id', 'tahunajaran', 'pendaftaran_id', 'pendaftaran', 'nik', 'nis', 'nama'];
}
