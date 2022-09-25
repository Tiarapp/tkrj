<?php

namespace App\Http\Controllers\Walikelas;

use App\Models\Data\data_walikelas;
use App\Models\Master\MasterPeriode;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AbsenController extends WalasController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Walikelas"]];

        $periode=$this->periode->getPeriodeAktif();

        // DETAIL WALIKELAS
            $walikelas=$this->detail_walikelas(Auth::user()->data_id);

        return view('content.Walikelas.Absen.absen', ['breadcrumbs' => $breadcrumbs, 'walikelas'=>$walikelas]);
    }

    public function add_absen($id_walas){
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Walikelas"], ['name' => "Input Absensi"]];

        $walikelas=$this->walikelas($id_walas);
        // TAMPILAN MURID KELAS
            $murid   = $this->murid_kelas($walikelas->id);
            // return $murid;

        return view('content.Walikelas.Absen.input_absen', ['breadcrumbs' => $breadcrumbs, 'murid'=>$murid, 'walikelas'=>$walikelas]);
    }
}
