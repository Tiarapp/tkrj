<?php

namespace App\Http\Controllers\Walikelas;

use App\Models\Master\MasterKelas;
use App\Models\Walikelas\tema_proyek;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TemaProyekController extends WalasController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Tema Proyek (P5)"]];

        $periode=$this->periode->getPeriodeAktif();

        // DETAIL WALIKELAS
            $walikelas=$this->detail_walikelas();

        $tema_proyek=tema_proyek::all()->sortby('kelas');

        return view('content.Walikelas.Proyek.TemaProyek.temaproyek',
        ['breadcrumbs' => $breadcrumbs, 'walikelas'=>$walikelas, 'tema_proyek'=>$tema_proyek]);
    }

    public function store(Request $request)
    {
        $periode=$this->periode->getPeriodeAktif();
        $kelas=MasterKelas::find($request->kelas_id);

        tema_proyek::create([
            'tema_proyek' => $request->tema_proyek,
            'deskripsi' => $request->deskripsi,
            'kelas' => $kelas->nama_kelas,
            'periode_keterangan' => $periode->periode,
            'semester' => $periode->semester,
            'tahunajaran' => $periode->tahunmulai."/".$periode->tahunselesai,
            'kelas_id' => $kelas->id,
            'periode_id' => $periode->id
        ]);

        return redirect()->back()->with('succes','Data Berhasil di Simpan');
    }
}
