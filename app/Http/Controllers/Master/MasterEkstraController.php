<?php

namespace App\Http\Controllers\Master;

use App\Models\Master\MasterEkstra;
use Illuminate\Http\Request;

class MasterEkstraController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Ekstra"]];
        $ekstra=MasterEkstra::all();
        return view('content.Master.Ekstra.data_ekstra', ['breadcrumbs' => $breadcrumbs, 'ekstra' => $ekstra]);
    }

    public function store(Request $request)
    {
        MasterEkstra::create([
            'ekstra' => $request->ekstra,
        ]);

        return redirect()->route('master.ekstra.list')->with('succes','Data Berhasil di Simpan');
    }

    public function update(Request $request)
    {
        // return $request->all();
        $data_ekstra=MasterEkstra::find($request->id);
        $data_ekstra->ekstra  = $request->ekstra_edit;
        $data_ekstra->status  = $request->status;
        $data_ekstra->save();

        return redirect()->route('master.ekstra.list')->with('succes','Data Berhasil di Ubah');
    }
}
