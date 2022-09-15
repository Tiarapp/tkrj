<?php

namespace App\Models\Data;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class data_indicators extends Model
{
    use HasFactory;
    protected $table ='data_indicators';
    protected $fillable = ['id', 'area', 'development', 'indicators', 'jenjang', 'periode', 'semester', 'tahunajaran', 'area_id', 'development_id', 'jenjang_id', 'master_id', 'periode_id', 'created_at', 'updated_at'];
}
