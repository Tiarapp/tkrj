<?php

namespace App\Http\Controllers\raport;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Raport\RaportController;
use App\Models\Data\data_murid;
use App\Models\Nilai\nilai_cbi;
use App\Models\Nilai\nilai_doa;
use App\Models\Nilai\nilai_ekstra;
use App\Models\Nilai\nilai_hadist;
use App\Models\Nilai\nilai_ibadah;
use App\Models\Nilai\nilai_tahfidz;
use App\Models\Nilai\nilai_tilawah;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class RaportAkademikController extends RaportController
{
    public function index()
    {
        $periode=$this->periode->getPeriodeAktif();

        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Raport Akademik"]];

        // LIST KELAS YG DIAJAR
            $list_kelas    = $this->list_kelas(Auth::user()->data_id);

        return view('content.Raport.Akademik.raport_akademik', ['breadcrumbs' => $breadcrumbs, 'list_kelas'=>$list_kelas]);
    }

    public function view_murid($id_pengajar)
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "List Murid"]];

        $periode=$this->periode->getPeriodeAktif();

        $detail_pengajar  = $this->detail_pengajar($id_pengajar);

        // TAMPILAN MURID KELAS
            $murid   = $this->murid_kelas($id_pengajar);

        // $predikat=MasterPredikat::all();
        // dd($periode);

        return view('content.Raport.Akademik.view_murid', ['breadcrumbs' => $breadcrumbs, 'periode' => $periode, 'detail_pengajar' => $detail_pengajar, 'murid' => $murid]);
    }

    public function raport($murid_id)
    {

        $murid = data_murid::where('id', '=', $murid_id)
            ->first();

        $periode=$this->periode->getPeriodeAktif();


        $ekstra = nilai_ekstra::where('murid_id', '=', $murid_id)->get();
        $cbi = nilai_cbi::where('murid_id', '=', $murid_id)->get();
        $doa = nilai_doa::where('murid_id', '=', $murid_id)->get();
        $hadist = nilai_hadist::where('murid_id', '=', $murid_id)->get();
        $ibadah = nilai_ibadah::where('murid_id', '=', $murid_id)->get();


        $tahfidz = nilai_tahfidz::where('murid_id', '=', $murid_id)->get();
        $tilawah = nilai_tilawah::where('murid_id', '=', $murid_id)->get();

        if ($periode->periode == "Tengah") {
            return view('content.Raport.Akademik.print_mid_raport', compact('murid','periode','ekstra', 'tilawah', 'tahfidz', 'cbi', 'doa', 'hadist', 'ibadah'));
        } else {
            return view('content.Raport.Akademik.print_akhir_raport', compact('murid','periode','ekstra', 'tilawah', 'tahfidz', 'cbi', 'doa', 'hadist', 'ibadah'));
        }

    }
}
