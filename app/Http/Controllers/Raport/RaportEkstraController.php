<?php

namespace App\Http\Controllers\Raport;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Raport\RaportController;
use App\Models\Data\data_indicators;
use App\Models\Data\data_murid;
use App\Models\Master\MasterIndikatorStudentProfile;
use App\Models\Master\MasterPredikat;
use App\Models\Master\MasterSiswa;
use App\Models\Nilai\nilai_cbi;
use App\Models\Nilai\nilai_doa;
use App\Models\Nilai\nilai_ekstra;
use App\Models\Nilai\nilai_hadist;
use App\Models\Nilai\nilai_ibadah;
use App\Models\Nilai\nilai_tahfidz;
use App\Models\Nilai\nilai_tilawah;
use App\Models\Walikelas\absen;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use League\CommonMark\Util\SpecReader;

class RaportEkstraController extends RaportController
{
    public function index()
    {
        $periode=$this->periode->getPeriodeAktif();

        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Raport Ekstra"]];

        // LIST KELAS YG DIAJAR
            $list_kelas    = $this->list_kelas(Auth::user()->data_id);

        return view('content.Raport.Ekstra.raport_ekstra', ['breadcrumbs' => $breadcrumbs, 'list_kelas'=>$list_kelas]);
    }

    public function view_murid($id_pengajar)
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Murid Kelas"]];

        $periode=$this->periode->getPeriodeAktif();

        $detail_pengajar  = $this->detail_pengajar($id_pengajar);

        // TAMPILAN MURID KELAS
            $murid   = $this->murid_kelas($id_pengajar);

        // $predikat=MasterPredikat::all();
        // dd($periode);

        return view('content.Raport.Ekstra.view_murid', ['breadcrumbs' => $breadcrumbs, 'periode' => $periode, 'detail_pengajar' => $detail_pengajar, 'murid' => $murid]);
    }

    public function raport($murid_id)
    {

        $murid = data_murid::where('id', '=', $murid_id)
            ->first();

        $periode=$this->periode->getPeriodeAktif();

        $absen=absen::where('murid_id', $murid_id)
                    ->where('periode_keterangan', $periode->periode)
                    ->where('periode_id', $periode->id)
                    ->first();
        $ekstra = nilai_ekstra::where('murid_id', '=', $murid_id)->get();
        $cbi = nilai_cbi::where('murid_id', '=', $murid_id)->get();
        $doa = nilai_doa::leftjoin('master_doa_harian', 'nilai_doa_harian.indicators_id', '=', 'master_doa_harian.id')
                        ->where('murid_id', '=', $murid_id)
                        ->orderby('master_doa_harian.urutan')->get();
        $hadist = nilai_hadist::where('murid_id', '=', $murid_id)->get();
        $ibadah = nilai_ibadah::leftjoin('master_doa_harian', 'nilai_ibadah.indicators_id', '=', 'master_doa_harian.id')
                                ->where('murid_id', '=', $murid_id)
                                ->orderby('master_doa_harian.urutan')->get();


        $tahfidz = nilai_tahfidz::where('murid_id', '=', $murid_id)->get();
        $tilawah = nilai_tilawah::where('murid_id', '=', $murid_id)->get();

        $sp = studentprofile::where('murid_id', '=', $murid_id)
                ->where('periode_keterangan', $periode->periode)
                ->where('periode_id', $periode->id)
                ->first();

        $spdetail = studentprofile_detail::where('nilai_studentprofile_id', '=', $sp->id)
                ->orderBy('master_indikator_studentprofile_id', 'asc')
                ->get();

        $kesehatan = perkembangan::where('murid_id', '=', $murid_id)
                        ->where('master_perkembangan', '=', 'Kesehatan')
                        ->get();

        $kebersihan = perkembangan::where('murid_id', '=', $murid_id)
                        ->where('master_perkembangan', '=', 'Kebersihan')
                        ->get();
        

        $ortu = MasterSiswa::where('id', '=', $murid->siswa_id)->first();
        $pertumbuhan=perkembangan::leftjoin('master_kategoris', 'nilai_perkembangan.master_kategori_id', '=', 'master_kategoris.id')
                                ->where('nilai_perkembangan.murid_id', $murid_id)
                                ->where('nilai_perkembangan.periode_id', $periode->id)->orderby('master_kategoris.id')->get();
        // dd($pertumbuhan) ;

        if ($periode->periode == "Tengah") {
            return view('content.Raport.Ekstra.print_mid_raport', compact('murid','periode', 'absen', 'ekstra', 'tilawah', 'tahfidz', 'cbi', 'doa', 'hadist', 'ibadah', 'ortu'));
        } else {
            return view('content.Raport.Ekstra.print_akhir_raport', compact('murid','periode', 'absen', 'ekstra', 'tilawah', 'tahfidz', 'cbi', 'doa', 'hadist', 'ibadah', 'ortu'));
        }

    }
}
