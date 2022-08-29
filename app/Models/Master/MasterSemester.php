<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterSemester extends Model
{
    use HasFactory;

    protected $table = 'master_semesters';

    protected $fillable = [
        'nama_semester', 'jenjang_id', 'tahun_ajaran_id', 'status'
    ];

    public function jenjang()
    {
      return $this->belongsTo(MasterJenjang::class, 'jenjang_id', 'id');
    }

    public function thnajaran()
    {
      return $this->belongsTo(MasterTahunAjaran::class, 'tahun_ajaran_id', 'id');
    }

}
