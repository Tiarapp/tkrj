<?php

namespace App\Models\Data;

use App\Models\Nilai\nilai_ekstra;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class data_indicators extends Model
{
    use HasFactory;
    protected $table ='data_indicators';
    protected $fillable = ['id', 'urutan', 'area', 'development', 'indicators', 'jenjang', 'periode', 'semester', 'tahunajaran', 'status', 'area_id', 'development_id', 'jenjang_id', 'master_id', 'periode_id', 'created_at', 'updated_at'];

    public function nilai_ekstra()
    {
        return $this->hasMany(nilai_ekstra::class, 'indicators_id', 'id');
    }
}
