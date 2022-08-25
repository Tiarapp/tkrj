<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterJenjang extends Model
{
    use HasFactory;

    protected $table = 'master_jenjang';
    protected $fillable =[
        'nama_jenjang', 'status_aktif'
    ];
}
