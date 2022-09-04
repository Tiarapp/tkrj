<?php

namespace App\Models\Data;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class data_walikelas extends Model
{
    use HasFactory;
    protected $table ='data_walikelas';
    protected $fillable = ['id', 'nip', 'nama', 'kelas', 'jenjang', 'tahunajaran', 'guru_id', 'kelas_id', 'tahunajaran_id', 'created_at', 'updated_at'];
}
