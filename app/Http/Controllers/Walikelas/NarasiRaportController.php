<?php

namespace App\Http\Controllers\Walikelas;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

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

        $walikelas=$this->walikelas($id_walas);
        return view('content.Walikelas.Narasi.edit_narasi', ['breadcrumbs' => $breadcrumbs, 'walikelas'=>$walikelas]);
    }
}
