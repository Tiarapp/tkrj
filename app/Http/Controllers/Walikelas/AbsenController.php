<?php

namespace App\Http\Controllers\Walikelas;

use App\Models\Data\data_murid;
use App\Models\Data\data_walikelas;
use App\Models\Master\MasterPeriode;
use App\Models\Walikelas\absen;
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
        $periode=$this->periode->getPeriodeAktif();

        $walikelas=$this->walikelas($id_walas);
        // TAMPILAN MURID KELAS
            $murid   = $this->murid_kelas($walikelas->id);

        return view('content.Walikelas.Absen.input_absen', ['breadcrumbs' => $breadcrumbs, 'murid'=>$murid, 'walikelas'=>$walikelas]);
    }

    public function store(Request $request)
    {
        // dd($request->all());
        $periode=$this->periode->getPeriodeAktif();
        // dd($request->all());
        if (count($request['add_murid_id']) > 0) {
            foreach($request['add_murid_id'] as $idx_murid_id => $val_murid_id) {

                $murid=data_murid::find($val_murid_id);

                    $absen=absen::UpdateOrCreate(
                        [   'id'    => $request['id_absen'][$val_murid_id]],
                        [   'nis'               => $murid->nis,
                            'nama'              => $murid->nama,
                            'kelas'             => $murid->kelas,
                            'jenjang'           => $murid->jenjang,
                            'ijin'              => $request['ijin'][$val_murid_id],
                            'sakit'             => $request['sakit'][$val_murid_id],
                            'alpha'             => $request['alpha'][$val_murid_id],
                            'periode_keterangan'=> $periode->periode,
                            'murid_id'          => $murid->id,
                            'kelas_id'          => $murid->kelas_id,
                            'jenjang_id'        => $murid->jenjang_id,
                            'periode_id'        => $periode->id
                        ]
                    );
            }
        }
        return redirect()->route('walikelas.absen.list')->with('succes','Data Berhasil di Simpan');
    }

    public function edit_absen(Request $request)
    {
        $periode=$this->periode->getPeriodeAktif();
        $walikelas = $this->walikelas($request->id_walikelas);

        $absen=absen::where('kelas_id', $walikelas->kelas_id)
                    ->where('periode_keterangan', $periode->periode)
                    ->where('periode_id', $periode->id)
                    ->get();
        return $absen;
    }
}
