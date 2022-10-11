<?php

namespace App\Http\Controllers\Walikelas;

use App\Models\Data\data_murid;
use App\Models\Master\MasterCP;
use App\Models\Nilai\nilai_akademik;
use App\Models\Rekap\rekap_akademik;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class NarasiRaportController extends WalasController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Walikelas"]];

        $periode=$this->periode->getPeriodeAktif();

        // DETAIL WALIKELAS
            $walikelas=$this->detail_walikelas(Auth::user()->data_id);

        return view('content.Walikelas.Narasi.narasi', ['breadcrumbs' => $breadcrumbs, 'walikelas'=>$walikelas]);
    }

    public function list_siswa($id_walas){
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Walikelas"], ['name' => "List Siswa"]];
        $periode=$this->periode->getPeriodeAktif();

        $walikelas=$this->walikelas($id_walas);
        // TAMPILAN MURID KELAS
            $murid   = $this->murid_kelas($walikelas->id);

        return view('content.Walikelas.Narasi.list_siswa', ['breadcrumbs' => $breadcrumbs, 'murid'=>$murid, 'walikelas'=>$walikelas]);
    }

    public function edit_narasi($id_murid){
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Walikelas"], ['name' => "Edit Narasi Siswa"]];
        $periode=$this->periode->getPeriodeAktif();

        $murid=$this->data_murid($id_murid);

        $nilai_akademik=nilai_akademik::select('nilai_akademik.nis', 'nilai_akademik.nama', 'nilai_akademik.kelas',  'nilai_akademik.jenjang', 'nilai_akademik.cp', DB::raw('group_concat(nilai_akademik.tk SEPARATOR " ") AS tk'))
                                        ->where('murid_id', $murid->id)
                                        ->where('periode_keterangan', $periode->periode)
                                        ->where('periode_id', $periode->id)
                                        ->groupBy('nilai_akademik.nis', 'nilai_akademik.nama', 'nilai_akademik.kelas', 'nilai_akademik.jenjang', 'nilai_akademik.cp')
                                        ->get();
        // dd($nilai_akademik);
        return view('content.Walikelas.Narasi.edit_narasi', ['breadcrumbs' => $breadcrumbs, 'murid'=>$murid, 'nilai_akademik'=>$nilai_akademik]);
    }

    public function store(Request $request)
    {
        $periode=$this->periode->getPeriodeAktif();

        $murid=data_murid::find($request->id_murid);

        $cp=implode("||", $request['cp']);
        $narasi=implode("||", $request['narasi']);
        // dd($cp);
        $rekap_akademik=rekap_akademik::UpdateOrCreate(
            [   'id'    => $request->id_rekap_akademik],
            [   'nis'                   => $murid->nis,
                'nama'                  => $murid->nama,
                'kelas'                 => $murid->kelas,
                'jenjang'               => $murid->jenjang,
                'cp'                    => $cp,
                'narasi'                => $narasi,
                'periode_keterangan'    => $periode->periode,
                'tahunajaran'           => $murid->tahunajaran,
                'murid_id'              => $murid->id,
                'kelas_id'              => $murid->kelas_id,
                'periode_id'            => $periode->id,
            ]
        );
        return redirect()->back()->with('succes','Data Berhasil di Simpan');
    }

    public function update_narasi(Request $request)
    {
        $periode=$this->periode->getPeriodeAktif();

        $rekap_akademik=rekap_akademik::where('murid_id', $request->id_murid)
                                        ->where('periode_keterangan', $periode->periode)
                                        ->where('periode_id', $periode->id)
                                        ->first();
        return $rekap_akademik;
    }
}
