<?php

namespace App\Http\Controllers\Nilai;

use App\Models\Data\data_indicators;
use App\Models\Data\data_murid;
use App\Models\Data\data_pengajar;
use App\Models\Master\MasterArea;
use App\Models\Master\MasterCP;
use App\Models\Master\MasterPredikat;
use App\Models\Master\MasterTema;
use App\Models\Master\MasterTK;
use App\Models\Master\MasterTP;
use App\Models\Nilai\nilai_akademik;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NilaiAkademikController extends NilaiController
{
    public function index()
    {
        $periode=$this->periode->getPeriodeAktif();

        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Nilai Akademik"]];

        // LIST KELAS YG DIAJAR
            $list_kelas    = $this->list_kelas(Auth::user()->data_id);

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

    public function store(Request $request)
    {
        $messages = [
            'id_tema.required'  => 'Pilih Tema Terlebih Dahulu',
            'id_tk.required'  => 'Pilih TK Terlebih Dahulu'
        ];

        $this->validate($request,[
            'id_tema' => 'required',
            'id_tk' => 'required'
        ],$messages);

        $periode=$this->periode->getPeriodeAktif();

        $tema=MasterTema::find($request->id_tema);
        $tk=MasterTK::find($request->id_tk);
        $tp=MasterTP::find($tk->tp_id);

        if (count($request['add_murid_id']) > 0) {
            foreach($request['add_murid_id'] as $idx_murid_id => $val_murid_id) {

                if (!!empty($request['nilai'][$val_murid_id])) {

                }else{
                    $murid=data_murid::find($val_murid_id);

                    $nilai_akademik=nilai_akademik::UpdateOrCreate(
                        [   'id'    => $request['id_nilai_akademik'][$val_murid_id]],
                        [   'nis'               => $murid->nis,
                            'nama'              => $murid->nama,
                            'kelas'             => $murid->kelas,
                            'cp'                => $tp->id_cp->narasi,
                            'tp'                => $tp->narasi,
                            'tk'                => $tk->narasi,
                            'jenjang'           => $murid->jenjang,
                            'tema'              => $tema->tema,
                            'periode_keterangan'=> $periode->periode,
                            'murid_id'          => $murid->id,
                            'kelas_id'          => $murid->kelas_id,
                            'jenjang_id'        => $murid->jenjang_id,
                            'cp_id'             => $tp->id_cp->id,
                            'tp_id'             => $tp->id,
                            'tk_id'             => $tk->id,
                            'tema_id'           => $tema->id,
                            'periode_id'        => $periode->id
                        ]
                    );
                }
            }
        }
        return redirect()->route('nilai.akademik.list')->with('succes','Data Berhasil di Simpan');
    }

    public function edit_nilai(Request $request)
    {
        $periode=$this->periode->getPeriodeAktif();
        $detail_pengajar = $this->detail_pengajar($request->id_pengajar);
        $nilai_akademik=nilai_akademik::where('kelas_id', $detail_pengajar->kelas_id)
                            ->where('tema_id', $request->id_tema)
                            ->where('tk_id', $request->id_tk)
                            ->where('periode_id', $periode->id)
                            ->where('periode_keterangan', $periode->periode)
                            ->get();
        return $nilai_akademik;
    }

    public function rekap($id_pengajar)
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => " Rekap Input Nilai"], ['name' => "Akademik"]];

        $periode=$this->periode->getPeriodeAktif();

        $detail_pengajar  = $this->detail_pengajar($id_pengajar);

        // TAMPILAN MURID KELAS
            $murid   = $this->murid_kelas($id_pengajar);

        $tema=MasterTema::all();
        $tk=MasterTK::all();
        $predikat=MasterPredikat::all();

        // REKAP NILAI
            $periode=$this->periode->getPeriodeAktif();
            $detail_pengajar = $this->detail_pengajar($id_pengajar);

            $nilai_akademik=nilai_akademik::where('kelas_id', $detail_pengajar->kelas_id)
                                ->where('periode_id', $periode->id)
                                ->where('periode_keterangan', $periode->periode)
                                ->get();


        // PROSES SEMUA REKAP NILAI PERANAK
            // $nilai = function() use($murid, $nilai_akademik) {
            //     $data = [];
            //     // LOPING MAPEL
            //         foreach ($murid as $murid_kelas) {
            //             $i=0;
            //             // INISIASI VARIABEL
            //                 $item =(object) ["nilai_akademik" => null];

            //             // SET ID, NAMA MAPEL
            //                 $item->absen = $murid_kelas->absen;
            //                 $item->nama = $murid_kelas->nama;

            //             // SET NILAI PTS BERDASARKAN ID MAPEL, FUNCTION ($PTS) memasukkan item dari NILAI PTS
            //                 $item->tk = $nilai_akademik->filter(function($na) use($murid_kelas) {
            //                     return $na->murid_id === $murid_kelas->id;
            //                 })->first();

            //             // MEMASUKKAN ITEM KE VARIABEL DATA
            //                 array_push($data, $item);
            //                 // $i++;
            //         }
            //         return $data;
            // };

        return view('content.Nilai.Akademik.rekap_nilai_akademik', ['breadcrumbs' => $breadcrumbs, 'periode' => $periode, 'detail_pengajar' => $detail_pengajar, 'murid' => $murid, 'tema'=>$tema, 'tk'=>$tk, 'predikat'=>$predikat, 'nilai_akademik'=>$nilai_akademik]);
    }
}
