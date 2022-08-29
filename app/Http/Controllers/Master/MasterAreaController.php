<?php

namespace App\Http\Controllers\Master;

use App\Models\Master\MasterArea;
use Illuminate\Http\Request;

class MasterAreaController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Area Development"]];

        $area = MasterArea::all();

        return view('content.Master.Area.data_area', [
            'breadcrumbs' => $breadcrumbs, 
            'area' => $area
        ]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'nama_area'     => 'required',
            'status'   => 'required'
        ]);

        $area = MasterArea::create([
            'nama_area' => $request->nama_area,
            'status'    => $request->status
        ]);

        if($area){
            //redirect dengan pesan sukses
            return redirect()->route('master.area.list')->with(['succes' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.area.list')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'nama_area'     => 'required',
            'status'        => 'required'
        ]);

        //get data MasterJenjang by ID
        $area = MasterArea::findOrFail($id);

        // dd($area);

        if($request->file('image') == "") {

            $area->update([
                'nama_area' => $request->nama_area,
                'status'    => $request->status
            ]);

        } else {

            $area->update([
                'nama_area' => $request->nama_area,
                'status'    => $request->status
            ]);

        }

        if($area){
            //redirect dengan pesan sukses
            return redirect()->route('master.area.list')->with(['succes' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.area.list')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }
}
