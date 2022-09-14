<?php

namespace App\Http\Controllers\Master;

use App\Models\Master\MasterTahfidz;
use Illuminate\Http\Request;

class MasterTahfidzController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Tahfidz"]];
        // $semester = MasterSemester::latest()->paginate(10);

        $tahfidz=MasterTahfidz::all();
        // return $tahfidz;
        return view('content.Master.Tahfidz.tahfidz', [
            'breadcrumbs' => $breadcrumbs,
            'tahfidz'   => $tahfidz
        ]);
    }

    public function store(Request $request)
    {
        MasterTahfidz::create([
            'surat'         => $request->surat,
            'jumlah_ayat'   => $request->jumlah,
            'hari'        => $request->hari,
        ]);

        return redirect()->route('master.tahfidz.list')->with('succes','Data Berhasil di Simpan');
    }

    public function update(Request $request)
    {
        if($request->status=="on"){
            $request->status="Aktif";
        }else{
            $request->status="Non Aktif";
        }
        $tahfidz=MasterTahfidz::find($request->id);
        $tahfidz->surat         = $request->edit_surat;
        $tahfidz->jumlah_ayat   = $request->edit_jumlah;
        $tahfidz->hari          = $request->edit_hari;
        $tahfidz->status        = $request->status;
        $tahfidz->save();

        return redirect()->route('master.tahfidz.list')->with('succes','Data Berhasil di Ubah');
    }
}
