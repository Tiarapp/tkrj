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
        'id', 'capaian_pembelajaran', 'tujuan_pembelajaran', 'status_aktif', 'cp_id', 'created_at'
    ];

    public function id_cp()
    {
        return $this->belongsTo(MasterCP::class, 'cp_id', 'id');
    }
}
