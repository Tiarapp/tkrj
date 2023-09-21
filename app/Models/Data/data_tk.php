<?php

namespace App\Models\Data;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class data_tk extends Model
{
    use HasFactory;
    protected $table = 'data_tk';
    protected $fillable = [
        'id', 'tujuan_pembelajaran', 'kode_referensi', 'no', 'tujuan_kegiatan', 'jenjang_id', 'jenjang', 'status_aktif', 'cp_id', 'tp_id', 'tahunajaran_id', 'created_at', 'updated_at'
    ];

    public function id_cp()
    {
        return $this->belongsTo(data_cp::class, 'cp_id', 'id');
    }

    public function id_tahunajaran()
    {
    	return $this->belongsTo('App\Models\Master\MasterTahunAjaran','tahunajaran_id', 'id');
    }
}
