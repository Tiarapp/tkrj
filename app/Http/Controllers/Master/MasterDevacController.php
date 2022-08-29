<?php

namespace App\Http\Controllers\Master;

use App\Models\Master\MasterArea;
use App\Models\Master\MasterDevAchiev;
use Illuminate\Http\Request;

class MasterDevacController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Development Achievment"]];

        $devac = MasterDevAchiev::all();
        $area = MasterArea::all();


        return view('content.Master.DevAchiev.data_devac', [
            'breadcrumbs' => $breadcrumbs, 
            'devac' => $devac,
            'area' => $area
        ]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'area_id'     => 'required',
            'nama_achievment'     => 'required',
            'status'   => 'required'
        ]);

        $devac = MasterDevAchiev::create([
            'area_id' => $request->area_id,
            'nama_achievment' => $request->nama_achievment,
            'status'    => $request->status
        ]);

        if($devac){
            //redirect dengan pesan sukses
            return redirect()->route('master.devac.list')->with(['succes' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.devac.list')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'area_id'     => 'required',
            'nama_achievment'     => 'required',
            'status'   => 'required'
        ]);

        //get data MasterJenjang by ID
        $devac = MasterDevAchiev::findOrFail($id);

        // dd($devac);

        if($request->file('image') == "") {

            $devac->update([
                'area_id' => $request->area_id,
                'nama_achievment' => $request->nama_achievment,
                'status'    => $request->status
            ]);

        } else {

            $devac->update([
                'area_id' => $request->area_id,
                'nama_achievment' => $request->nama_achievment,
                'status'    => $request->status
            ]);

        }

        if($devac){
            //redirect dengan pesan sukses
            return redirect()->route('master.devac.list')->with(['succes' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.devac.list')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }
}
