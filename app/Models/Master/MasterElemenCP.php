<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterElemenCP extends Model
{
    use HasFactory;

    /**
    * fillable
    *
    * @var array
    */

    protected $table = 'master_elemen_cp';

    protected $fillable = [
        'cp_id', 'nama_elemen','narasi', 'status',
    ];

    public function cp()
    {
        return $this->belongsTo(MasterCP::class, 'cp_id', 'id');
    }
}
