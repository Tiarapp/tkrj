<?php

namespace App\Http\Controllers\Nilai;

use App\Models\Master\MasterPredikat;
use App\Models\Master\MasterTema;
use App\Models\Master\MasterTK;
use Illuminate\Http\Request;

class NilaiAkademikController extends NilaiController
{
    public function index()
    {
        $periode=$this->periode->getPeriodeAktif();

        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Nilai Akademik"]];

        // LIST KELAS YG DIAJAR
            $list_kelas    = $this->list_kelas(13);

        return view('content.Nilai.Akademik.nilai_akademik', ['breadcrumbs' => $breadcrumbs, 'list_kelas'=>$list_kelas]);
    }

    public function add_nilai($id_pengajar)
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Input Nilai"], ['name' => "Akademik"]];

        $periode=$this->periode->getPeriodeAktif();

        $detail_pengajar  = $this->detail_pengajar($id_pengajar);
        // TAMPILAN MURID KELAS
            $murid   = $this->murid_kelas($id_pengajar);

        $tema=MasterTema::all();

        $tk=MasterTK::all();

        $predikat=MasterPredikat::all();

        return view('content.Nilai.Akademik.add_nilai_akademik', ['breadcrumbs' => $breadcrumbs, 'periode' => $periode, 'detail_pengajar' => $detail_pengajar, 'murid' => $murid, 'tema'=>$tema, 'tk'=>$tk, 'predikat'=>$predikat]);
    }
}
