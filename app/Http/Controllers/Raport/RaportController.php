<?php

namespace App\Http\Controllers\Raport;

use App\Models\Data\data_murid;
use App\Models\Data\data_pengajar;
use App\Models\Master\MasterPeriode;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class RaportController extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function __construct() {
        $this->periode=new MasterPeriode();
    }

    // LIST KELAS YANG DIAJARKAN
        public function list_kelas($id_guru) {
            $periode=$this->periode->getPeriodeAktif();

            $list_kelas=data_pengajar::where('guru_id', $id_guru)
                                ->where('tahunajaran_id', $periode->tahunajaran_id)
                                ->get();
            return $list_kelas;
        }

    // GET DATA PENGAJAR
        public function detail_pengajar($id_pengajar) {
            return $pengajar=data_pengajar::where('id', $id_pengajar)
                                ->select('id', 'nip', 'nama', 'kelas', 'jenjang', 'tahunajaran', 'guru_id', 'kelas_id', 'tahunajaran_id')
                                ->first();
        }

    // GET MURID KELAS
        public function murid_kelas($id_pengajar) {
            $periode=$this->periode->getPeriodeAktif();
            $pengajar = $this->detail_pengajar($id_pengajar);

            $murid_kelas=data_murid::where('kelas_id', $pengajar->kelas_id)
                                    ->where('tahunajaran_id', $periode->tahunajaran_id)
                                    ->select('id','nama','absen')
                                    ->orderby('absen')
                                    ->get();
            return $murid_kelas;
        }
}
