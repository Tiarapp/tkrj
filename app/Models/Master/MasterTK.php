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
        'nama_tk', 'narasi', 'status_aktif', 'kode_ref', 'tp_id'
    ];

    public function tp()
    {
        return $this->belongsTo(MasterTP::class, 'tp_id', 'id');
    }
}
