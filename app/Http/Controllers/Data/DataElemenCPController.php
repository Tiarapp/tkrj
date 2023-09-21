<?php

namespace App\Http\Controllers\Data;

use App\Models\Data\data_cp;
use App\Models\Data\data_elemen_cp;
use App\Models\Master\MasterTahunAjaran;
use Illuminate\Http\Request;

class DataElemenCPController extends DataController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data"], ['name' => "Elemen CP"]];
        $elemen = data_elemen_cp::latest()->paginate(10);
        $tahun_ajaran = MasterTahunAjaran::all();

        $cp = data_cp::all();

        return view('content.Data.ElemenCP.data_elemen', [
            'breadcrumbs' => $breadcrumbs,
            'elemen' => $elemen,
            'cp' => $cp,
            'tahun_ajaran' => $tahun_ajaran
        ]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'elemen'   => 'required',
            'status'        => 'required',
            'cp_id'         => 'required',
            'narasi'        => 'required',
            'tahunajaran_id'=> 'required',
        ]);

        // dd($request->elemen);

        $elemen = data_elemen_cp::create([
            'nama_elemen'   => $request->elemen,
            'narasi'        => $request->narasi,
            'cp_id'         => $request->cp_id,
            'status'        => $request->status,
            'tahunajaran_id'=> $request->ta_id
        ]);

        if($elemen){
            //redirect dengan pesan sukses
            return redirect()->route('data.elemencp.list')->with(['succes' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('data.elemencp.list')->with(['error' => 'Data Gagal Disimpan!']);
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
        $mastertp = data_elemen_cp::findOrFail($id);

        // dd($mastertp);

        if($request->file('image') == "") {

            $mastertp->update([
                'nama_elemen'   => $request->elemen,
                'narasi'        => $request->narasi,
                'cp_id'         => $request->cp_id,
                'status'        => $request->status,
                'tahunajaran_id'=> $request->ta_id
            ]);

        } else {

            $mastertp->update([
                // 'image'     => $image->hashName(),
                'nama_elemen'   => $request->elemen,
                'narasi'        => $request->narasi,
                'cp_id'         => $request->cp_id,
                'status'        => $request->status,
                'tahunajaran_id'=> $request->ta_id
            ]);

        }

        if($mastertp){
            //redirect dengan pesan sukses
            return redirect()->route('data.elemencp.list')->with(['succes' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('data.elemencp.list')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }

}
