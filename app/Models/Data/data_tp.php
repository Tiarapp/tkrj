<?php

namespace App\Models\Data;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class data_tp extends Model
{
    use HasFactory;
    protected $table = 'data_tp';
    protected $fillable = [
        'id', 'capaian_pembelajaran', 'tujuan_pembelajaran', 'status_aktif', 'cp_id','tahunajaran_id', 'created_at'
    ];

    public function id_cp()
    {
        return $this->belongsTo(data_cp::class, 'cp_id', 'id');
    }

    public function id_tahunajaran()
    {
    	return $this->belongsTo('App\Models\Master\MasterTahunAjaran','tahunajaran_id', 'id');
    }

    public function id_elemencp()
    {
        return $this->belongsTo(data_elemen_cp::class, 'elemencp_id', 'id');
    }
}
