<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Master\MasterController;
use App\Models\Master\MasterTP;
use Illuminate\Http\Request;

class MasterTPController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "TP"]];
        $MasterTP = MasterTP::latest()->paginate(10);

        return view('content.Master.TP.data_tp', [
            'breadcrumbs' => $breadcrumbs,
            'tp' => $MasterTP
        ]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'nama_tp'       => 'required',
            'status_aktif'  => 'required',
            'narasi'        => 'required'
        ]);

        $mastertp = MasterTP::create([
            'nama_tp'       => $request->nama_tp,
            'narasi'        => $request->narasi,
            'status_aktif'  => $request->status_aktif
        ]);

        if($mastertp){
            //redirect dengan pesan sukses
            return redirect()->route('master.tp.list')->with(['succes' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.tp.list')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'nama_tp'     => 'required',
            'status_aktif'   => 'required'
        ]);

        //get data MasterTP by ID
        $mastertp = MasterTP::findOrFail($id);

        if($request->file('image') == "") {

            $mastertp->update([
                'nama_tp'       => $request->nama_tp,
                'narasi'        => $request->narasi,
                'status_aktif'  => $request->status_aktif
            ]);

        } else {

            $mastertp->update([
                // 'image'     => $image->hashName(),
                'nama_tp'     => $request->nama_tp,
                'narasi'        => $request->narasi,
                'status_aktif'   => $request->status_aktif
            ]);

        }

        if($mastertp){
            //redirect dengan pesan sukses
            return redirect()->route('master.tp.list')->with(['succes' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.tp.list')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }

}
