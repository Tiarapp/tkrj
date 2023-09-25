<?php

namespace App\Http\Controllers\Data;

use App\Models\Data\data_cbi;
use App\Models\Master\MasterTahunAjaran;
use Illuminate\Http\Request;

class DataCBIController extends DataController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data"], ['name' => "CBI Fonik"]];
        $tahun_ajaran = MasterTahunAjaran::all();
        $cbi= data_cbi::where('tahunajaran_id', '4')->get();

        return view('content.Data.CBI.cbi', ['breadcrumbs' => $breadcrumbs, 'cbi' => $cbi, 'tahun_ajaran' => $tahun_ajaran]);
    }

    public function store(Request $request)
    {
        data_cbi::create([
            'cbi'            => $request->cbi,
            'tahunajaran_id' => $request->ta_id
        ]);

        return redirect()->route('data.cbi.list')->with('succes','Data Berhasil di Simpan');
    }

    public function update(Request $request)
    {
        if($request->status=="on"){
            $request->status = "Aktif";
        }else{
            $request->status = "Non Aktif";
        }
        $cbi= data_cbi::find($request->id);
        $cbi->cbi               = $request->edit_cbi;
        $cbi->status            = $request->status;
        $cbi->tahunajaran_id    = $request->ta_id;
        $cbi->save();

        return redirect()->route('data.cbi.list')->with('succes','Data Berhasil di Ubah');
    }
}
