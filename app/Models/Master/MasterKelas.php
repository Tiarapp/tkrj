<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterKelas extends Model
{
    use HasFactory;

    /**
    * fillable
    *
    * @var array
    */

    protected $table = 'master_kelas';

    protected $fillable = [
        'id', 'nama_kelas', 'jenjang', 'status', 'jenjang_id', 'created_at', 'updated_at'
    ];
}
