<?php

namespace App\Http\Controllers\Auth;

use App\Models\Data\data_walikelas;
use App\Models\Master\MasterGuru;
use App\Models\Master\MasterPeriode;
use App\Models\Master\MasterSiswa;
use Illuminate\Http\Request;

class RegisterController extends AuthController
{
    public function __construct() {
        $this->periode=new MasterPeriode();
    }

    public function register()
    {

        return view('content.Auth.register');
    }

    // public function datasiswa()
    // {
    //     $siswa=MasterSiswa::select('id', 'nis', 'nama')
    //                         ->get();
    //     return response()->json($siswa);
    // }

    public function datawalikelas()
    {
        $siswa=data_walikelas::select('id', 'nip', 'nama')
                            ->get();
        return response()->json($siswa);
    }

    public function dataguru()
    {
        $guru_mapel=MasterGuru::select('id', 'nomor_induk', 'nama_guru')
                            ->get();
        return response()->json($guru_mapel);
    }

    // public function dataguruekstra()
    // {
    //     $guru_ekstra=master_guruekstra::select('id', 'nama')
    //                         ->get();
    //     return response()->json($guru_ekstra);
    // }

    // public function datawalikelas()
    // {
    //     $periode=$this->periode->getPeriodeAktif();
    //     $walikelas=walikelas::where('tahunajaran_id', $periode->tahunajaran_id)
    //                         ->select('id', 'kelas', 'nama', 'guru_id')
    //                         ->get();
    //     return response()->json($walikelas);
    // }
}
