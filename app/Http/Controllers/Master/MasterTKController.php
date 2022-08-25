<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Master\MasterController;
use App\Models\Master\MasterTK;
use Illuminate\Http\Request;

class MasterTKController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "TK"]];
        
        $MasterTK = MasterTK::latest()->paginate(10);

        return view('content.Master.TK.data_tk', [
            'breadcrumbs' => $breadcrumbs,
            'tk' => $MasterTK
        ]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'kode_ref'      => 'required',
            'nama_tk'       => 'required',
            'narasi'        => 'required',
            'status_aktif'  => 'required'
        ]);

        $master_tk = MasterTK::create([
            'kode_ref'      => $request->kode_ref,
            'nama_tk'       => $request->nama_tk,
            'narasi'        => $request->narasi,
            'status_aktif'  => $request->status_aktif
        ]);

        if($master_tk){
            //redirect dengan pesan sukses
            return redirect()->route('master.tk.list')->with(['succes' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.tk.list')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function update(Request $request, $id)
    {

        // dd("error");

        $this->validate($request, [
            'kode_ref'      => 'required',
            'nama_tk'       => 'required',
            'narasi'        => 'required',
            'status_aktif'  => 'required'
        ]);

        //get data MasterTK by ID
        $master_tk = MasterTK::findOrFail($id);

        if($request->file('image') == "") {

            $master_tk->update([
                'kode_ref'      => $request->kode_ref,
                'nama_tk'       => $request->nama_tk,
                'narasi'        => $request->narasi,
                'status_aktif'  => $request->status_aktif
            ]);

        } else {

            $master_tk->update([
                // 'image'     => $image->hashName(),
                'kode_ref'      => $request->kode_ref,
                'nama_tk'       => $request->nama_tk,
                'narasi'        => $request->narasi,
                'status_aktif'  => $request->status_aktif
            ]);

        }

        if($master_tk){
            //redirect dengan pesan sukses
            return redirect()->route('master.tk.list')->with(['succes' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.tk.list')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }
}
