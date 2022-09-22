<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterTP extends Model
{
    use HasFactory;

    /**
    * fillable
    *
    * @var array
    */

    protected $table = 'master_t_p_s';

    protected $fillable = [
        'nama_tp', 'narasi','status_aktif', 'elemen_id',
    ];

    public function id_cp()
    {
        return $this->belongsTo(MasterElemenCP::class, 'cp_id', 'id');
    }
}
