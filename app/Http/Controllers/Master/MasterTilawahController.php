<?php

namespace App\Http\Controllers\Master;

use App\Models\Master\MasterTilawah;
use Illuminate\Http\Request;

class MasterTilawahController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Tilawah"]];
        // $semester = MasterSemester::latest()->paginate(10);

        $tilawah=MasterTilawah::all();
        // return $tahfidz;
        return view('content.Master.Tilawah.tilawah', [
            'breadcrumbs' => $breadcrumbs,
            'tilawah'   => $tilawah
        ]);
    }

    public function store(Request $request)
    {
        MasterTilawah::create([
            'tilawati'      => $request->tilawati,
            'jumlah_halaman'=> $request->jumlah,
            'keterangan'    => "Tilawati ". $request->tilawati . " halaman " . $request->jumlah,
        ]);

        return redirect()->route('master.tilawah.list')->with('succes','Data Berhasil di Simpan');
    }

    public function update(Request $request)
    {
        if($request->status=="on"){
            $request->status="Aktif";
        }else{
            $request->status="Non Aktif";
        }
        $tilawah=MasterTilawah::find($request->id);
        $tilawah->tilawati      = $request->edit_tilawati;
        $tilawah->jumlah_halaman= $request->edit_jumlah;
        $tilawah->keterangan    = "Tilawati ".$request->edit_tilawati." halaman ".$request->edit_jumlah;
        $tilawah->status        = $request->status;
        $tilawah->save();

        return redirect()->route('master.tilawah.list')->with('succes','Data Berhasil di Ubah');
    }
}
