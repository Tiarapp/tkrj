<?php

namespace App\Http\Controllers\Master;

use App\Models\Master\MasterDevAchiev;
use App\Models\Master\MasterIndikator;
use Illuminate\Http\Request;

class MasterIndikatorController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Development Achievment"]];

        $indikator = MasterIndikator::all();
        $devac = MasterDevAchiev::all();


        return view('content.Master.Indikator.data_indikator', [
            'breadcrumbs' => $breadcrumbs, 
            'devac' => $devac,
            'indikator' => $indikator
        ]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'devac_id'     => 'required',
            'nama_indikator'     => 'required',
            'status'   => 'required'
        ]);

        $indikator = MasterIndikator::create([
            'devac_id' => $request->devac_id,
            'nama_indikator' => $request->nama_indikator,
            'status'    => $request->status
        ]);


        if($indikator){
            //redirect dengan pesan sukses
            return redirect()->route('master.indikator.list')->with(['succes' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.indikator.list')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'devac_id'     => 'required',
            'nama_indikator'     => 'required',
            'status'   => 'required'
        ]);

        //get data MasterJenjang by ID
        $indikator = MasterDevAchiev::findOrFail($id);

        // dd($indikator);

        if($request->file('image') == "") {

            $indikator->update([
                'devac_id' => $request->devac_id,
                'nama_indikator' => $request->nama_indikator,
                'status'    => $request->status
            ]);

        } else {

            $indikator->update([
                'devac_id' => $request->devac_id,
                'nama_indikator' => $request->nama_indikator,
                'status'    => $request->status
            ]);

        }

        if($indikator){
            //redirect dengan pesan sukses
            return redirect()->route('master.indikator.list')->with(['succes' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.indikator.list')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }
}
