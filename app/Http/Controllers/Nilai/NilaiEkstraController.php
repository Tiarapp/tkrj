<?php

namespace App\Http\Controllers\Nilai;

use App\Models\Data\data_indicators;
use App\Models\Data\data_murid;
use App\Models\Master\MasterPredikat;
use App\Models\Nilai\nilai_ekstra;
use Illuminate\Http\Request;

class NilaiEkstraController extends NilaiController
{
    public function index()
    {
        $periode=$this->periode->getPeriodeAktif();

        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Nilai Ekstra"]];

        // LIST KELAS YG DIAJAR
            $list_kelas    = $this->list_kelas(13);

        return view('content.Nilai.Ekstra.nilai_ekstra', ['breadcrumbs' => $breadcrumbs, 'list_kelas'=>$list_kelas]);
    }

    public function add_nilai($id_pengajar)
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Input Nilai"], ['name' => "Ekstra"]];

        $periode=$this->periode->getPeriodeAktif();

        $detail_pengajar  = $this->detail_pengajar($id_pengajar);
        // TAMPILAN MURID KELAS
            $murid   = $this->murid_kelas($id_pengajar);

        $ekstra=data_indicators::where('area_id', 1)
                                ->where('development_id', 1)
                                ->where('jenjang_id', 3)
                                ->select('id', 'indicators')
                                ->get();

        $predikat=MasterPredikat::all();

        return view('content.Nilai.Ekstra.add_nilai_ekstra', ['breadcrumbs' => $breadcrumbs, 'periode' => $periode, 'detail_pengajar' => $detail_pengajar, 'murid' => $murid, 'ekstra'=>$ekstra, 'predikat'=>$predikat]);
    }

    public function store(Request $request)
    {

        $periode=$this->periode->getPeriodeAktif();

        $indicators=data_indicators::find($request->id_indicators);

        if (count($request['add_murid_id']) > 0) {
            foreach($request['add_murid_id'] as $idx_murid_id => $val_murid_id) {

                try {
                    $murid=data_murid::find($val_murid_id);

                    $nilai_ekstra=nilai_ekstra::UpdateOrCreate(
                        [   'id'    => $request['id_nilai_ekstra'][$val_murid_id]],
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
        return redirect()->route('nilai.ekstra.list')->with('succes','Data Berhasil di Simpan');
    }

    public function edit_nilai(Request $request)
    {
        $periode=$this->periode->getPeriodeAktif();
        $detail_pengajar = $this->detail_pengajar($request->id_pengajar);

        $nilai_ekstra=nilai_ekstra::where('kelas_id', $detail_pengajar->kelas_id)
                            ->where('indicators_id', $request->id_indicators)
                            ->where('periode_id', $periode->id)
                            ->where('periode_keterangan', $periode->periode)
                            ->get();
        return $nilai_ekstra;
    }
}
