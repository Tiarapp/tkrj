<?php

namespace App\Models\Nilai;

use App\Models\Master\MasterArea;
use App\Models\Master\MasterDevAchiev;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class nilai_cbi extends Model
{
    use HasFactory;
    protected $table = 'nilai_cbi';

    protected $fillable = [
        'id', 'nis', 'nama', 'kelas', 'nilai', 'indicators', 'jenjang', 'periode_keterangan', 'murid_id', 'kelas_id', 'jenjang_id', 'areas_id', 'development_id', 'indicators_id', 'periode_id', 'created_at', 'updated_at'
    ];
    
    public function area()
    {
        return $this->belongsTo(MasterArea::class, 'areas_id', 'id');
    }

    public function devac()
    {
        return $this->belongsTo(MasterDevAchiev::class, 'development_id', 'id');
    }
}
