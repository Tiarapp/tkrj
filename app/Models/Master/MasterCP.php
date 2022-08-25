<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterCP extends Model
{
    use HasFactory;

    protected $table = 'master_c_p_s';

    protected $fillable = [
        'nama_cp', 'status_aktif', 'narasi', 'keterangan'
    ];
}
