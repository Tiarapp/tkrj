<?php

namespace App\Models\Data;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class data_murid extends Model
{
    use HasFactory;
    protected $table ='data_murid';
    protected $fillable = ['id', 'nis', 'nama', 'absen', 'kelas', 'jenjang', 'extra', 'tahfid', 'tilawah', 'catatan_siswa', 'tahunajaran', 'siswa_id', 'kelas_id', 'jenjang_id', 'extra_id', 'tahfid_id', 'tilawah_id', 'catatan_siswa_id', 'tahunajaran_id', 'created_at', 'updated_at'];
}
