<?php

namespace App\Http\Controllers\Master;

use Illuminate\Http\Request;

// MODEL
    use App\Models\Master\master_guru;
use App\Models\Master\MasterGuru;

class MasterGuruController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Guru"]];
        $guru=MasterGuru::all();
        return view('content.Master.Guru.data_guru', [
            'breadcrumbs' => $breadcrumbs, 
            'guru' => $guru
        ]);
    }

    public function store(Request $request)
    {
        MasterGuru::create([
            'nomor_induk'       => $request->nomor_induk,
            'nama_guru'      => $request->nama_guru,
            'status_aktif'    => $request->status
        ]);

        return redirect()->route('master.guru.list')->with('succes','Data Berhasil di Simpan');
    }

    public function update(Request $request, $id)
    {
        // return $request->all();
        $data_guru=MasterGuru::find($id);
        $data_guru->nomor_induk  = $request->nomor_induk;
        $data_guru->nama_guru = $request->nama_guru;
        $data_guru->status_aktif = $request->status;
        $data_guru->save();

        return redirect()->route('master.guru.list')->with('succes','Data Berhasil di Ubah');
    }
}
