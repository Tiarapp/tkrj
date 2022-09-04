<?php

namespace App\Http\Controllers\Data;

use App\Models\Data\data_walikelas;
use App\Models\Master\MasterGuru;
use App\Models\Master\MasterJenjang;
use App\Models\Master\MasterKelas;
use App\Models\Master\MasterTahunAjaran;
use Illuminate\Http\Request;

// MODEL MASTER


// MODEL DATA



class WalikelasController extends DataController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data"], ['name' => "Walikelas"]];
        $tahunajaran=MasterTahunAjaran::all();
        $jenjang=MasterJenjang::where('id', '>', 1)
                                ->get();
        $guru=MasterGuru::where('status_aktif', "Aktif")
                            ->get();
        $kelas=MasterKelas::all();

        return view('content.Data.Walikelas.walikelas', ['breadcrumbs' => $breadcrumbs, 'tahunajaran'=>$tahunajaran, 'jenjang'=>$jenjang, 'guru'=>$guru, 'kelas'=>$kelas]);
    }

    public function data_awal(Request $request){
        $jenjang=MasterJenjang::find($request->id_jenjang);
        $walikelas=data_walikelas::where('tahunajaran_id', $request->id_tahunajaran)
                            ->where('jenjang', $jenjang->nama_jenjang)
                            ->get();
        return response()->json([ 'data' => $walikelas ]);
    }

    public function view_walikelas(Request $request)
    {
        $walikelas=data_walikelas::find($request->data_walikelas);
        return response()->json($walikelas);
    }

    public function store(Request $request)
    {
        $messages = [
            'add_id_tahunajaran.required'  => 'Pilih Tahun Ajaran di Halaman Awal',
        ];

        $this->validate($request,[
            'add_id_tahunajaran' => 'required',
        ],$messages);

        $guru=MasterGuru::find($request->add_id_guru);
        $kelas=MasterKelas::find($request->add_id_kelas);
        $tahunajaran=MasterTahunAjaran::find($request->add_id_tahunajaran);
        data_walikelas::create([
            'nip'           => $guru->nomor_induk,
            'nama'          => $guru->nama_guru,
            'kelas'         => $kelas->nama_kelas,
            'jenjang'       => $kelas->jenjang,
            'tahunajaran'   => $tahunajaran->tahun_ajaran,
            'guru_id'       => $guru->id,
            'kelas_id'      => $kelas->id,
            'tahunajaran_id'=> $tahunajaran->id,
        ]);
        return redirect()->route('data.walikelas.list')->with('succes','Data Berhasil di Simpan');
    }

    public function update(Request $request)
    {
        $guru=MasterGuru::find($request->edit_id_guru);
        $kelas=MasterKelas::find($request->edit_id_kelas);

        $walikelas=data_walikelas::find($request->id_data);
        $walikelas->nip         = $guru->nomor_induk;
        $walikelas->nama        = $guru->nama_guru;
        $walikelas->kelas       = $kelas->nama_kelas;
        $walikelas->jenjang     = $kelas->jenjang;
        $walikelas->guru_id     = $guru->id;
        $walikelas->kelas_id    = $kelas->id;

        $walikelas->save();

        return redirect()->route('data.walikelas.list')->with('succes','Data Berhasil di Ubah');
    }
}
