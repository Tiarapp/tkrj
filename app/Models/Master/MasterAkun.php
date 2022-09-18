<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterAkun extends Model
{
    use HasFactory;

    protected $table ='master_akun';
    protected $fillable = ['id', 'kode', 'keterangan', 'created_at', 'updated_at'];
}
