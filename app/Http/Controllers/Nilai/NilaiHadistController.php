<?php

namespace App\Http\Controllers\Nilai;

use App\Models\Data\data_indicators;
use App\Models\Data\data_murid;
use App\Models\Master\MasterPredikat;
use App\Models\Nilai\nilai_hadist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NilaiHadistController extends NilaiController
{
    public function index()
    {
        $periode=$this->periode->getPeriodeAktif();

        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Nilai Hadist"]];

        // LIST KELAS YG DIAJAR
            $list_kelas    = $this->list_kelas(Auth::user()->data_id);

        return view('content.Nilai.Hadist.nilai_hadist', ['breadcrumbs' => $breadcrumbs, 'list_kelas'=>$list_kelas]);
    }

    public function add_nilai($id_pengajar)
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Input Nilai"], ['name' => "Hadist"]];

        $periode=$this->periode->getPeriodeAktif();

        $detail_pengajar  = $this->detail_pengajar($id_pengajar);
        // TAMPILAN MURID KELAS
            $murid   = $this->murid_kelas($id_pengajar);

        $hadist=data_indicators::where('area_id', 5)
                                ->where('development_id', 4)
                                ->where('jenjang_id', $murid[0]['jenjang_id'])
                                ->select('id', 'indicators')
                                ->where('status', "Aktif")
                                ->orderby('indicators')
                                ->get();

        $predikat=MasterPredikat::all();

        return view('content.Nilai.Hadist.add_nilai_hadist', ['breadcrumbs' => $breadcrumbs, 'periode' => $periode, 'detail_pengajar' => $detail_pengajar, 'murid' => $murid, 'hadist'=>$hadist, 'predikat'=>$predikat]);
    }

    public function store(Request $request)
    {

        $periode=$this->periode->getPeriodeAktif();

        $indicators=data_indicators::find($request->id_indicators);

        if (count($request['add_murid_id']) > 0) {
            foreach($request['add_murid_id'] as $idx_murid_id => $val_murid_id) {

                try {
                    $murid=data_murid::find($val_murid_id);

                    $nilai_hadist=nilai_hadist::UpdateOrCreate(
                        [   'id'    => $request['id_nilai_hadist'][$val_murid_id]],
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
        return redirect()->back()->with('succes','Data Berhasil di Simpan');
    }

    public function edit_nilai(Request $request)
    {
        $periode=$this->periode->getPeriodeAktif();
        $detail_pengajar = $this->detail_pengajar($request->id_pengajar);

        $nilai_hadist=nilai_hadist::where('kelas_id', $detail_pengajar->kelas_id)
                            ->where('indicators_id', $request->id_indicators)
                            ->where('periode_id', $periode->id)
                            ->where('periode_keterangan', $periode->periode)
                            ->get();
        return $nilai_hadist;
    }

    public function rekap($id_pengajar)
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => " Rekap Nilai"], ['name' => "Hadist"]];

        $periode=$this->periode->getPeriodeAktif();

        $detail_pengajar  = $this->detail_pengajar($id_pengajar);

        // TAMPILAN MURID KELAS
            $murid   = $this->murid_kelas($id_pengajar);

        // REKAP NILAI
            $periode=$this->periode->getPeriodeAktif();
            $detail_pengajar = $this->detail_pengajar($id_pengajar);

            $nilai_hadist=nilai_hadist::where('kelas_id', $detail_pengajar->kelas_id)
                                ->where('periode_id', $periode->id)
                                ->where('periode_keterangan', $periode->periode)
                                ->get();

        return view('content.Nilai.Hadist.rekap_nilai_hadist', ['breadcrumbs' => $breadcrumbs, 'periode' => $periode, 'detail_pengajar' => $detail_pengajar, 'murid' => $murid, 'nilai_hadist'=>$nilai_hadist]);
    }

    public function delete($id)
    {
        //fungsi eloquent untuk menghapus data
        $nilai_hadist=nilai_hadist::find($id)->delete();
        return redirect()->back()->with('succes','Data Berhasil di Hapus');
    }
}
