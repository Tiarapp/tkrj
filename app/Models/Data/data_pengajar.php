<?php

namespace App\Models\Data;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class data_pengajar extends Model
{
    use HasFactory;
    protected $table ='data_pengajar';
    protected $fillable = ['id', 'nip', 'nama', 'kelas', 'jenjang', 'tahunajaran', 'guru_id', 'kelas_id', 'tahunajaran_id', 'created_at', 'updated_at'];
}
