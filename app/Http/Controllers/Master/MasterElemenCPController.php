<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Master\MasterController;
use App\Models\Master\MasterCP;
use App\Models\Master\MasterElemenCP;
use App\Models\Master\MasterTP;
use Illuminate\Http\Request;

class MasterElemenCPController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "TP"]];
        $elemen = MasterElemenCP::latest()->paginate(10);

        $cp = MasterCP::all();

        return view('content.Master.ElemenCP.data_elemen', [
            'breadcrumbs' => $breadcrumbs,
            'elemen' => $elemen,
            'cp' => $cp
        ]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'elemen'   => 'required',
            'status'        => 'required',
            'cp_id'         => 'required',
            'narasi'        => 'required',
        ]);

        // dd($request->elemen);

        $elemen = MasterElemenCP::create([
            'nama_elemen'   => $request->elemen,
            'narasi'        => $request->narasi,
            'cp_id'         => $request->cp_id,
            'status'        => $request->status
        ]);

        if($elemen){
            //redirect dengan pesan sukses
            return redirect()->route('master.elemen.list')->with(['succes' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.elemen.list')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function update(Request $request, $id)
    {
        // $this->validate($request, [
        //     'nama_elemen'   => 'required',
        //     'status'        => 'required',
        //     'cp_id'         => 'required',
        //     'narasi'        => 'required',
        // ]);

        // dd($request->elemen);
        //get data MasterTP by ID
        $mastertp = MasterElemenCP::findOrFail($id);

        // dd($mastertp);

        if($request->file('image') == "") {

            $mastertp->update([
                'nama_elemen'   => $request->elemen,
                'narasi'        => $request->narasi,
                'cp_id'         => $request->cp_id,
                'status'        => $request->status
            ]);

        } else {

            $mastertp->update([
                // 'image'     => $image->hashName(),
                'nama_elemen'   => $request->elemen,
                'narasi'        => $request->narasi,
                'cp_id'         => $request->cp_id,
                'status'        => $request->status
            ]);

        }

        if($mastertp){
            //redirect dengan pesan sukses
            return redirect()->route('master.elemen.list')->with(['succes' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.elemen.list')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }

}
