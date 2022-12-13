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
use App\Models\Rekap\rekap_akademik;
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
        $periode=$this->periode->getPeriodeAktif();

        $murid = data_murid::where('id', '=', $murid_id)
            ->first();

        $rekap_akademik=rekap_akademik::where('murid_id', $murid_id)
                                        ->where('periode_keterangan', $periode->periode)
                                        ->where('periode_id', $periode->id)
                                        ->first();

        if (!empty($rekap_akademik)) {
            $cp = explode('||', $rekap_akademik->cp);
            $narasi = explode('||', $rekap_akademik->narasi);

            $cp = array_reverse($cp);
            $narasi = array_reverse($narasi);
        } else {
            $cp='';
            $narasi='';
        }

        if ($periode->periode == "Tengah") {
            return view('content.Raport.Akademik.print_mid_raport', compact('murid','periode', 'rekap_akademik', 'cp', 'narasi'));
        } else {
            return view('content.Raport.Akademik.print_akhir_raport', compact('murid','periode', 'rekap_akademik', 'cp','narasi'));
        }

    }
}
