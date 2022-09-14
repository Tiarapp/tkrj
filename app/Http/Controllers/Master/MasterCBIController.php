<?php

namespace App\Http\Controllers\Master;

use App\Models\Master\MasterCBI;
use Illuminate\Http\Request;

class MasterCBIController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "CBI Fonik"]];

        $cbi=MasterCBI::all();

        return view('content.Master.CBI.cbi', ['breadcrumbs' => $breadcrumbs, 'cbi' => $cbi]);
    }

    public function store(Request $request)
    {
        MasterCBI::create([
            'cbi'         => $request->cbi
        ]);

        return redirect()->route('master.cbi.list')->with('succes','Data Berhasil di Simpan');
    }

    public function update(Request $request)
    {
        if($request->status=="on"){
            $request->status="Aktif";
        }else{
            $request->status="Non Aktif";
        }
        $cbi=MasterCBI::find($request->id);
        $cbi->cbi    = $request->edit_cbi;
        $cbi->status        = $request->status;
        $cbi->save();

        return redirect()->route('master.cbi.list')->with('succes','Data Berhasil di Ubah');
    }
}
