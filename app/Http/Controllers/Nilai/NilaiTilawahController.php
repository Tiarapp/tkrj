<?php

namespace App\Http\Controllers\Nilai;

use App\Models\Data\data_indicators;
use App\Models\Data\data_murid;
use App\Models\Master\MasterPredikat;
use App\Models\Nilai\nilai_tilawah;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NilaiTilawahController extends NilaiController
{
    public function index()
    {
        $periode=$this->periode->getPeriodeAktif();

        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Nilai Tilawah"]];

        // LIST KELAS YG DIAJAR
            $list_kelas    = $this->list_kelas(Auth::user()->data_id);

        return view('content.Nilai.Tilawah.nilai_tilawah', ['breadcrumbs' => $breadcrumbs, 'list_kelas'=>$list_kelas]);
    }

    public function add_nilai($id_pengajar)
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Input Nilai"], ['name' => "Tahfidz"]];

        $periode=$this->periode->getPeriodeAktif();

        $detail_pengajar  = $this->detail_pengajar($id_pengajar);
        // TAMPILAN MURID KELAS
            $murid   = $this->murid_kelas($id_pengajar);

        $tilawah=data_indicators::where('area_id', 6)
                                ->where('development_id', 5)
                                ->where('jenjang_id', 1)
                                ->select('id', 'indicators')
                                ->orderby('indicators')
                                ->get();

        $predikat=MasterPredikat::all();

        return view('content.Nilai.Tilawah.add_nilai_tilawah', ['breadcrumbs' => $breadcrumbs, 'periode' => $periode, 'detail_pengajar' => $detail_pengajar, 'murid' => $murid, 'tilawah'=>$tilawah, 'predikat'=>$predikat]);
    }

    public function store(Request $request)
    {

        $periode=$this->periode->getPeriodeAktif();

        $indicators=data_indicators::find($request->id_indicators);

        if (count($request['add_murid_id']) > 0) {
            foreach($request['add_murid_id'] as $idx_murid_id => $val_murid_id) {

                try {
                    $murid=data_murid::find($val_murid_id);

                    $nilai_tilawah=nilai_tilawah::UpdateOrCreate(
                        [   'id'    => $request['id_nilai_tilawah'][$val_murid_id]],
                        [   'nis'               => $murid->nis,
                            'nama'              => $murid->nama,
                            'kelas'             => $murid->kelas,
                            'nilai'             => $request['predikat_id'][$val_murid_id],
                            'indicators'        => $indicators->indicators,
                            'jenjang'           => $murid->jenjang,
                            'periode_keterangan'=> $periode->periode,
                            'murid_id'          => $murid->id,
                            'kelas_id'          => $murid->kelas_id,
                            'jenjang_id'        => $murid->jenjang_id,
                            'areas_id'          => $indicators->area_id,
                            'development_id'    => $indicators->development_id,
                            'indicators_id'     => $indicators->id,
                            'periode_id'        => $periode->id
                        ]
                    );
                } catch (\Throwable $th) {
                    //throw $th;
                }
            }
        }
        return redirect()->route('nilai.tilawah.list')->with('succes','Data Berhasil di Simpan');
    }

    public function edit_nilai(Request $request)
    {
        $periode=$this->periode->getPeriodeAktif();
        $detail_pengajar = $this->detail_pengajar($request->id_pengajar);

        $nilai_tilawah=nilai_tilawah::where('kelas_id', $detail_pengajar->kelas_id)
                            ->where('indicators_id', $request->id_indicators)
                            ->where('periode_id', $periode->id)
                            ->where('periode_keterangan', $periode->periode)
                            ->get();
        return $nilai_tilawah;
    }

    public function rekap($id_pengajar)
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => " Rekap Nilai"], ['name' => "Tilawah"]];

        $periode=$this->periode->getPeriodeAktif();

        $detail_pengajar  = $this->detail_pengajar($id_pengajar);

        // TAMPILAN MURID KELAS
            $murid   = $this->murid_kelas($id_pengajar);

        // REKAP NILAI
            $periode=$this->periode->getPeriodeAktif();
            $detail_pengajar = $this->detail_pengajar($id_pengajar);

            $nilai_tilawah=nilai_tilawah::where('kelas_id', $detail_pengajar->kelas_id)
                                ->where('periode_id', $periode->id)
                                ->where('periode_keterangan', $periode->periode)
                                ->get();

        return view('content.Nilai.Tilawah.rekap_nilai_tilawah', ['breadcrumbs' => $breadcrumbs, 'periode' => $periode, 'detail_pengajar' => $detail_pengajar, 'murid' => $murid, 'nilai_tilawah'=>$nilai_tilawah]);
    }
}
