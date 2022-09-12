<?php

namespace App\Http\Controllers\Data;

use App\Models\Data\data_pengajar;
use App\Models\Master\MasterGuru;
use App\Models\Master\MasterKelas;
use App\Models\Master\MasterTahunAjaran;
use Illuminate\Http\Request;

class DataPengajarController extends DataController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data"], ['name' => "Pengajar"]];

        $pengajar=data_pengajar::all()->sortBy('nama');
        $guru=MasterGuru::all()->sortBy('nama_guru');
        $kelas=MasterKelas::all()->sortBy('nama_kelas');
        $tahunajaran=MasterTahunAjaran::all()->sortBy('tahunajaran');
        return view('content.Data.Pengajar.pengajar', ['breadcrumbs' => $breadcrumbs, 'pengajar'=>$pengajar, 'guru'=>$guru, 'kelas'=>$kelas, 'tahunajaran'=>$tahunajaran]);
    }

    public function data_awal_pertahun(Request $request)
    {
        $pengajar=data_pengajar::where('tahunajaran_id', $request->id_tahunajaran)
                            ->get();
        return response()->json([ 'data' => $pengajar ]);
    }

    public function store(Request $request)
    {
        $messages = [
            'add_tahunajaran.required'  => 'Pilih Tahun Ajaran di Halaman Awal'
        ];

        $this->validate($request,[
            'add_tahunajaran' => 'required'
        ],$messages);

        $tahunajaran=MasterTahunAjaran::find($request->add_tahunajaran);
        $guru=MasterGuru::find($request->add_guru);
        $kelas=MasterKelas::find($request->add_kelas);

        data_pengajar::create([
            'nip'               => $guru->nomor_induk,
            'nama'              => $guru->nama_guru,
            'kelas'             => $kelas->nama_kelas,
            'jenjang'           => $kelas->jenjang,
            'tahunajaran'       => $tahunajaran->tahun_ajaran,
            'guru_id'           => $guru->id,
            'kelas_id'          => $kelas->id,
            'tahunajaran_id'    => $tahunajaran->id
        ]);

        return redirect()->route('data.pengajar.list')->with('succes','Data Berhasil di Simpan');
    }

    public function filter_pengajar(Request $request)
    {
        $pengajar=data_pengajar::find($request->pengajar_id);
        return response()->json($pengajar);
    }

    public function update(Request $request)
    {
        $guru=MasterGuru::find($request->edit_guru);
        $kelas=MasterKelas::find($request->edit_kelas);
        // return $request->all();
        $pengajar=data_pengajar::find($request->id);
        $pengajar->nip              = $guru->nomor_induk;
        $pengajar->nama             = $guru->nama_guru;
        $pengajar->kelas            = $kelas->nama_kelas;
        $pengajar->jenjang          = $kelas->jenjang;
        $pengajar->guru_id          = $guru->id;
        $pengajar->kelas_id         = $kelas->id;

        $pengajar->save();

        return redirect()->route('data.pengajar.list')->with('succes','Data Berhasil di Ubah');
    }
}
