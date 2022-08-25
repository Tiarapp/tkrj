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
        'nama_kelas', 'status','jenjang'
    ];
}
