<?php

namespace App\Models\Data;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class data_cp extends Model
{
    use HasFactory;
    protected $table = 'data_cp';
    protected $fillable = [
        'nama_cp', 'status_aktif', 'keterangan', 'tahunajaran_id'
    ];

    public function id_tahunajaran()
    {
    	return $this->belongsTo('App\Models\Master\MasterTahunAjaran','tahunajaran_id', 'id');
    }
}
