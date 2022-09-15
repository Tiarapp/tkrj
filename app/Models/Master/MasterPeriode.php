<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterPeriode extends Model
{
    use HasFactory;
    protected $table ='master_periode';
    protected $fillable = ['id', 'tahunajaran_id', 'tahunmulai', 'tahunselesai', 'semester_id', 'semester', 'periode', 'status', 'created_at', 'updated_at'];

    public function id_tahunajaran()
    {
    	return $this->belongsTo('App\Models\Master\MasterTahunAjaran','tahunajaran_id', 'id');
    }
    public function id_semester()
    {
    	return $this->belongsTo('App\Models\Master\MasterSemester','semester_id', 'id');
    }

    public function getPeriodeAktif(){
        $periode = MasterPeriode::where('status','1')
                                    ->first();
        if($periode){
            return $periode;
        } else {
            return 0;
        }
    }
}
