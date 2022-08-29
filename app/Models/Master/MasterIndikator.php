<?php

namespace App\Models\Master;

use App\Models\Master\MasterDevAchiev as MasterMasterDevAchiev;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterIndikator extends Model
{
    use HasFactory;

    protected $table = 'master_indikator';

    protected $fillable = [
        'nama_indikator', 'devac_id', 'status'
    ];

    public function devac()
    {
        return $this->belongsTo(MasterMasterDevAchiev::class, 'devac_id', 'id');
    }
}
