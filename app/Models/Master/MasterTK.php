<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterTK extends Model
{
    use HasFactory;

    /**
    * fillable
    *
    * @var array
    */

    protected $table = 'master_t_k_s';

    protected $fillable = [
        'id', 'tujuan_pembelajaran', 'kode_referensi', 'no', 'tujuan_kegiatan', 'jenjang_id', 'jenjang', 'status_aktif', 'cp_id', 'tp_id', 'created_at', 'updated_at'
    ];

    public function id_cp()
    {
        return $this->belongsTo(MasterCP::class, 'cp_id', 'id');
    }
}
