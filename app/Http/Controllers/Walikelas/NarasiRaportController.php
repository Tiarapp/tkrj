<?php

namespace App\Http\Controllers\Walikelas;

use App\Models\Nilai\nilai_akademik;
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

    public function edit_narasi($id_walas){
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Walikelas"], ['name' => "Edit Narasi Siswa"]];
        $periode=$this->periode->getPeriodeAktif();

        $murid=$this->data_murid($id_walas);

        $nilai_akademik=nilai_akademik::select('nilai_akademik.nis', 'nilai_akademik.nama', 'nilai_akademik.kelas',  'nilai_akademik.jenjang', 'nilai_akademik.cp', DB::raw('group_concat(nilai_akademik.tk) AS tk'))
                                        ->where('murid_id', $murid->id)
                                        ->where('periode_keterangan', $periode->periode)
                                        ->where('periode_id', $periode->id)
                                        ->groupBy('nilai_akademik.nis', 'nilai_akademik.nama', 'nilai_akademik.kelas', 'nilai_akademik.jenjang', 'nilai_akademik.cp')
                                        ->get();
        return $nilai_akademik;

        return view('content.Walikelas.Narasi.edit_narasi', ['breadcrumbs' => $breadcrumbs, 'murid'=>$murid]);
    }
}
