<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Master\MasterController;
use App\Models\Master\MasterCP;
use Illuminate\Http\Request;

class MasterCPController extends MasterController
{
    public function index()
    {
        
        $MasterCP = MasterCP::latest()->paginate(10);

        // dd($MasterCP);
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "CP"]];

        return view('content.Master.CP.data_cp', [
            'breadcrumbs' => $breadcrumbs,
        ], compact('MasterCP'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            // 'image'     => 'required|image|mimes:png,jpg,jpeg',
            'nama_cp'       => 'required',
            'keterangan'    => 'required',
            'narasi'        => 'required',
            'status_aktif'  => 'required'
        ]);

        //upload image
        // $image = $request->file('image');
        // $image->storeAs('public/blogs', $image->hashName());

        $mastercp = MasterCP::create([
            // 'image'     => $image->hashName(),
            'nama_cp'       => $request->nama_cp,
            'status_aktif'  => $request->status_aktif,
            'narasi'        => $request->narasi,
            'keterangan'    => $request->keterangan,
        ]);

        if($mastercp){
            //redirect dengan pesan sukses
            return redirect()->route('master.cp.list')->with(['succes' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.cp.list')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function update(Request $request, $id)
    {
        // $this->validate($request, [
        //     'nama_cp'       => 'required',
        //     'narasi'        => 'required',
        //     'keterangan'    => 'required',
        //     'status_aktif'  => 'required',
        // ]);

        //get data MasterCP by ID
        $mastercp = MasterCP::findOrFail($id);

        // dd($mastercp);

        if($request->file('image') == "") {

            $mastercp->update([
                'nama_cp'     => $request->nama_cp,
                'status_aktif'   => $request->status_aktif,
                'narasi'        => $request->narasi,
                'keterangan'    => $request->keterangan,
            ]);

        } else {

            $mastercp->update([
                // 'image'     => $image->hashName(),
                'nama_cp'     => $request->nama_cp,
                'status_aktif'   => $request->status_aktif
            ]);

        }

        if($mastercp){
            //redirect dengan pesan sukses
            return redirect()->route('master.cp.list')->with(['succes' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.cp.list')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }
}
