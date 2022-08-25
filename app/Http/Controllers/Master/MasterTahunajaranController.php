<?php

namespace App\Http\Controllers\Master;

use Illuminate\Http\Request;

// MODEL
    use App\Models\Master\master_tahunajaran;
use App\Models\Master\MasterTahunAjaran;

class MasterTahunajaranController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Tahun Ajaran"]];
        $tahunajaran=MasterTahunAjaran::all();

        return view('content.Master.TahunAjaran.data_tahunajaran', [
            'breadcrumbs' => $breadcrumbs, 
            'tahunajaran' => $tahunajaran
        ]);
    }

    public function store(Request $request)
    {
        MasterTahunAjaran::create([
            'mulai'         => $request->mulai,
            'selesai'       => $request->selesai,
            'status'        => $request->status,
            'tahun_ajaran'  => $request->mulai."/".$request->selesai,
        ]);

        return redirect()->route('master.tahunajaran.list')->with('succes','Data Berhasil di Simpan');
    }

    public function update(Request $request, $id)
    {
        // return $request->all();
        $data_tahunajaran=MasterTahunAjaran::find($id);
        $data_tahunajaran->status       = $request->status;
        $data_tahunajaran->save();

        return redirect()->route('master.tahunajaran.list')->with('succes','Data Berhasil di Ubah');
    }
}
