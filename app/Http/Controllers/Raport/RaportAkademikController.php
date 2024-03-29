<?php

namespace App\Http\Controllers\raport;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Raport\RaportController;
use App\Models\Data\data_murid;
use App\Models\Data\data_tanggal_cetak;
use App\Models\Nilai\nilai_cbi;
use App\Models\Nilai\nilai_doa;
use App\Models\Nilai\nilai_ekstra;
use App\Models\Nilai\nilai_hadist;
use App\Models\Nilai\nilai_ibadah;
use App\Models\Nilai\nilai_tahfidz;
use App\Models\Nilai\nilai_tilawah;
use App\Models\Rekap\rekap_akademik;
use App\Models\Walikelas\nilai_proyek;
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
        // return $periode;
        $murid = data_murid::where('id', '=', $murid_id)
            ->first();
        $tanggal_cetak=data_tanggal_cetak::where('periode_keterangan', $periode->periode)
                                        ->where('master_periode_id', $periode->id)
                                        ->first();
        $rekap_akademik=rekap_akademik::where('murid_id', $murid_id)
                                        ->where('periode_keterangan', $periode->periode)
                                        ->where('periode_id', $periode->id)
                                        ->first();
        // dd($rekap_akademik->saran_tema);
        if (!empty($rekap_akademik)) {
            $cp = explode('||', $rekap_akademik->cp);
            $narasi = explode('||', $rekap_akademik->narasi);
            $saran_tema = explode('||', $rekap_akademik->saran_tema);
            $saran_ortu = explode('||', $rekap_akademik->saran_ortu);

            foreach ($cp as $key => $data) {
                $data_[$data]=[
                    'narasi'        =>$narasi[$key],
                    'saran_tema'    =>$saran_tema[$key],
                    'saran_ortu'    =>$saran_ortu[$key]
                ];
            }
            // $cp = array_reverse($cp);
            // $narasi = array_reverse($narasi);
            // $saran_tema = array_reverse($saran_tema);
            // $saran_ortu = array_reverse($saran_ortu);
        } else {
            $cp='';
            $narasi='';
            $saran_tema='';
            $saran_ortu='';
        }

        $proyek = nilai_proyek::where('murid_id', '=', $murid_id)
                                ->where('periode_keterangan', $periode->periode)
                                ->where('periode_id', $periode->id)->first();

        if ($periode->periode == "Tengah") {
            if ($murid->jenjang=="TC") {

                return view('content.Raport.Akademik.print_mid_raport_tc',
                compact('murid','periode', 'rekap_akademik', 'cp', 'narasi', 'saran_tema', 'saran_ortu',
                'tanggal_cetak', 'data_'));

            } elseif ($murid->jenjang=="PG") {

                return view('content.Raport.Akademik.print_mid_raport_pg',
                compact('murid','periode', 'rekap_akademik', 'cp', 'narasi', 'saran_tema', 'saran_ortu',
                'tanggal_cetak', 'data_'));

            }elseif ($murid->jenjang=="TK A" || $murid->jenjang=="TK B") {
                return view('content.Raport.Akademik.print_mid_raport_tk',
                compact('murid','periode', 'rekap_akademik', 'cp', 'narasi', 'saran_tema', 'saran_ortu',
                'tanggal_cetak', 'data_'));
            }

            // return view('content.Raport.Akademik.print_mid_raport',
            //         compact('murid','periode', 'rekap_akademik', 'cp', 'narasi', 'saran_tema', 'saran_ortu',
            //         'tanggal_cetak', 'data_'));
        } else {
            return view('content.Raport.Akademik.print_akhir_raport',
                    compact('murid','periode', 'rekap_akademik', 'cp','narasi', 'saran_tema', 'saran_ortu', 'proyek',
                    'tanggal_cetak'));
        }

    }
}
