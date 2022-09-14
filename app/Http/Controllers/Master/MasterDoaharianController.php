<?php

namespace App\Http\Controllers\Master;

use App\Models\Master\MasterDoaharian;
use Illuminate\Http\Request;

class MasterDoaharianController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Doa Harian"]];
        $doaharian=MasterDoaharian::all();
        return view('content.Master.Doaharian.doaharian', ['breadcrumbs' => $breadcrumbs, 'doaharian' => $doaharian]);
    }

    public function store(Request $request)
    {
        MasterDoaharian::create([
            'doa_harian'         => $request->doa
        ]);

        return redirect()->route('master.doaharian.list')->with('succes','Data Berhasil di Simpan');
    }

    public function update(Request $request)
    {
        if($request->status=="on"){
            $request->status="Aktif";
        }else{
            $request->status="Non Aktif";
        }
        $doaharian=MasterDoaharian::find($request->id);
        $doaharian->doa_harian    = $request->edit_doaharian;
        $doaharian->status        = $request->status;
        $doaharian->save();

        return redirect()->route('master.doaharian.list')->with('succes','Data Berhasil di Ubah');
    }
}
