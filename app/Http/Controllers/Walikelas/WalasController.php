<?php

namespace App\Http\Controllers\Walikelas;

use App\Models\Data\data_murid;
use App\Models\Data\data_pengajar;
use App\Models\Data\data_walikelas;
use App\Models\Master\MasterPeriode;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class WalasController extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function __construct() {
        $this->periode=new MasterPeriode();
    }

    // GET DETAIL WALIKELAS
        public function detail_walikelas($id_guru) {
            $periode=$this->periode->getPeriodeAktif();
            return $walas=data_walikelas::where('guru_id', $id_guru)
                                        ->where('tahunajaran_id', $periode->tahunajaran_id)
                                        ->get();
        }

    // GET WALIKELAS
        public function walikelas($id_walikelas){
            return $walas=data_walikelas::find($id_walikelas);
        }

    // GET MURID KELAS
        public function murid_kelas($id_walikelas) {
            $periode=$this->periode->getPeriodeAktif();
            $walikelas = $this->walikelas($id_walikelas);

            $murid_kelas=data_murid::where('kelas_id', $walikelas->kelas_id)
                                    ->where('tahunajaran_id', $periode->tahunajaran_id)
                                    ->select('id','nama','absen')
                                    ->orderby('absen')
                                    ->get();
            return $murid_kelas;
        }

    // GET DATA MURID
        public function data_murid($id_murid){
            return $data_murid=data_murid::find($id_murid);
        }
}
