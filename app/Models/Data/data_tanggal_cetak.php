<?php

namespace App\Models\Data;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class data_tanggal_cetak extends Model
{
    use HasFactory;
    protected $table ='data_tanggal_cetak';
    protected $fillable = ['id', 'tanggal_cetak', 'periode_keterangan', 'master_periode_id', 'created_at', 'updated_at'];
}
