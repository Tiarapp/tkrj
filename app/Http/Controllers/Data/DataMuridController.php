<?php

namespace App\Http\Controllers\Data;

use App\Models\Data\data_murid;
use App\Models\Master\MasterKelas;
use App\Models\Master\MasterSiswa;
use App\Models\Master\MasterTahunAjaran;
use Illuminate\Http\Request;

class DataMuridController extends DataController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data"], ['name' => "Murid"]];
        $murid=data_murid::all()->sortBy('kelas');
        $tahunajaran=MasterTahunAjaran::all();
        $kelas=MasterKelas::all()
                            ->sortBy('nama');
        return view('content.Data.Murid.murid', ['breadcrumbs' => $breadcrumbs, 'murid' => $murid, 'tahunajaran' => $tahunajaran, 'kelas' => $kelas]);
    }

    // FILTER MURID TAHUNAJARAN
        public function get_murid_tahun(Request $request){
            if (empty($request->kelas)) {
                $murid=data_murid::where('tahunajaran_id', $request->tahunajaran)
                                ->get();
                return response()->json([ 'data' => $murid ]);
            }else {
                $murid=data_murid::where('tahunajaran_id', $request->tahunajaran)
                                    ->where('kelas_id', $request->kelas)
                                    ->get();
                return response()->json([ 'data' => $murid ]);
            }
        }

    // DATA ADD SISWA AWAL
        public function data_siswa_baru(Request $request){
            $siswa=MasterSiswa::where('tahunajaran_id', $request->tahun_masuk)
                                ->get();

            return response()->json([ 'data' => $siswa ]);
        }

        public function data_siswa_awal(Request $request){
            $tahunajaran=MasterTahunAjaran::find($request->tahunajaran);

            // CEK DATA PENGURANGAN KALOK DATA TIDAK ADA
            if($tahunajaran==NULL){

                return response()->json([ 'data' => []  ]);
            } else{
                $thn_filter=MasterTahunAjaran::where('mulai', $tahunajaran->mulai-1)
                                            ->first();
                if (empty($request->kelas)) {

                    if ($thn_filter == NULL) {

                        return response()->json([ 'data' => [] ]);
                    } else {
                        $murid_awal=data_murid::where('tahunajaran_id', $thn_filter->id)
                                                ->get();

                        return response()->json([ 'data' => $murid_awal ]);
                    }

                }else {

                    if ($thn_filter == NULL) {

                        return response()->json([ 'data' => [] ]);
                    } else {
                        $murid_awal=data_murid::where('tahunajaran_id', $thn_filter->id)
                                        ->where('kelas_id', $request->kelas_id)
                                        ->get();

                        return response()->json([ 'data' => $murid_awal ]);
                    }
                }
            }

        }

        public function filter_kelas(Request $request){

            $tahunajaran=MasterTahunAjaran::find($request->tahunajaran);

            if($tahunajaran==NULL){

                return response()->json([ 'data' => []  ]);
            } else{
                $thn_filter=MasterTahunAjaran::where('mulai', $tahunajaran->mulai-1)
                                            ->first();

                if ($thn_filter == NULL) {

                    return response()->json([ 'data' => []  ]);
                } else {
                    $murid_awal=data_murid::where('tahunajaran_id', $thn_filter->id)
                                        ->where('kelas_id', $request->kelas_awal)
                                        ->get();

                    return response()->json([ 'data' => $murid_awal ]);
                }
            }

        }

    public function store(Request $request)
    {

        $tahun_ajaran=MasterTahunAjaran::find($request->thn_ajaran_select);
        $kelas=MasterKelas::find($request->kelas_select);
        // dd($request->all());
        if (count($request['siswa_id']) > 0) {
            foreach($request['siswa_id'] as $idx_siswa_id => $val_siswa_id) {
                if ($request['nis'][$val_siswa_id] !== NULL){
                    // dd($request['nama'][$val_siswa_id]);
                    // dd($request);
                    $data=data_murid::create([
                        'nis'           => $request['nis'][$val_siswa_id],
                        'nama'          => $request['nama'][$val_siswa_id],
                        'absen'         => $request['absen'][$val_siswa_id],
                        'kelas'         => $kelas->nama_kelas,
                        'jenjang'       => $kelas->jenjang,
                        'tahunajaran'   => $tahun_ajaran->tahun_ajaran,
                        'siswa_id'      => $val_siswa_id,
                        'kelas_id'      => $kelas->id,
                        'jenjang_id'    => $kelas->jenjang_id,
                        'tahunajaran_id'=> $tahun_ajaran->id,
                    ]);
                }
            }
        }

        return redirect()->route('data.datamurid.list')->with('succes','Data Berhasil di Simpan');
    }
}
