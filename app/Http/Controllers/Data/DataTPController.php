<?php

namespace App\Http\Controllers\Data;

use App\Models\Data\data_elemen_cp;
use App\Models\Data\data_tp;
use Illuminate\Http\Request;

class DataTPController extends DataController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data"], ['name' => "TP"]];
        $data_tp = data_tp::where('tahunajaran_id', '4')->get();

        $cp = data_elemen_cp::where('tahunajaran_id', '4')->get();

        // dd($cp);

        return view('content.Data.TujuanPembelajaran.data_tp', [
            'breadcrumbs' => $breadcrumbs,
            'tp' => $data_tp,
            'cp' => $cp
        ]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'nama_tp'       => 'required',
            'status_aktif'  => 'required',
            'cp_id'         => 'required',
            'narasi'        => 'required',
        ]);
        // dd($request->cp_id);

        $data_tp = data_tp::create([
            'nama_tp'       => $request->nama_tp,
            'narasi'        => $request->narasi,
            'elemen_id'     => $request->cp_id,
            'status_aktif'  => $request->status_aktif
        ]);

        if($data_tp){
            //redirect dengan pesan sukses
            return redirect()->route('data.tp.list')->with(['succes' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('data.tp.list')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'nama_tp'     => 'required',
            'cp_id'        => 'required',
            'narasi'        => 'required',
            'status_aktif'   => 'required'
        ]);

        //get data MasterTP by ID
        $mastertp = data_tp::findOrFail($id);

        // dd($mastertp);

        if($request->file('image') == "") {

            $mastertp->update([
                'nama_tp'       => $request->nama_tp,
                'narasi'        => $request->narasi,
                'elemen_id'        => $request->cp_id,
                'status_aktif'  => $request->status_aktif
            ]);

        } else {

            $mastertp->update([
                // 'image'     => $image->hashName(),
                'nama_tp'     => $request->nama_tp,
                'narasi'        => $request->narasi,
                'elemen_id'        => $request->cp_id,
                'status_aktif'   => $request->status_aktif
            ]);

        }

        if($mastertp){
            //redirect dengan pesan sukses
            return redirect()->route('data.tp.list')->with(['succes' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('data.tp.list')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }

}
