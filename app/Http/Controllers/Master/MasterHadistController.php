<?php

namespace App\Http\Controllers\Master;

use App\Models\Master\MasterHadist;
use Illuminate\Http\Request;

class MasterHadistController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Hadist"]];
        $hadist=MasterHadist::all();
        return view('content.Master.Hadist.hadist', ['breadcrumbs' => $breadcrumbs, 'hadist' => $hadist]);
    }

    public function store(Request $request)
    {
        MasterHadist::create([
            'hadist'         => $request->hadist
        ]);

        return redirect()->route('master.hadist.list')->with('succes','Data Berhasil di Simpan');
    }

    public function update(Request $request)
    {
        if($request->status=="on"){
            $request->status="Aktif";
        }else{
            $request->status="Non Aktif";
        }
        $hadist=Masterhadist::find($request->id);
        $hadist->hadist = $request->edit_hadist;
        $hadist->status = $request->status;
        $hadist->save();

        return redirect()->route('master.hadist.list')->with('succes','Data Berhasil di Ubah');
    }
}
