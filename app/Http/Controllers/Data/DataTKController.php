<?php

namespace App\Http\Controllers\Data;

use App\Models\Data\data_tk;
use App\Models\Data\data_tp;
use App\Models\Master\MasterTahunAjaran;
use Illuminate\Http\Request;

class DataTKController extends DataController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data"], ['name' => "TK"]];
        
        $tahun_ajaran = MasterTahunAjaran::all();
        $data_tk = data_tk::latest()->paginate(10); 

        $data_tp = data_tp::all();

        return view('content.Data.TujuanKegiatan.data_tk', [
            'breadcrumbs' => $breadcrumbs,
            'tk' => $data_tk,
            'tp' => $data_tp,
            'tahun_ajaran' => $tahun_ajaran
        ]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'kode_ref'      => 'required',
            'tp_id'         => 'required',
            'nama_tk'       => 'required',
            'narasi'        => 'required',
            'status_aktif'  => 'required',
            'tahun_ajaran'  => 'required'
        ]);

        $data_tk = data_tk::create([
            'kode_ref'      => $request->kode_ref,
            'nama_tk'       => $request->nama_tk,
            'tp_id'         => $request->tp_id,
            'narasi'        => $request->narasi,
            'status_aktif'  => $request->status_aktif,
            'tahun_ajaran'  => $request->ta_id
        ]);

        if($data_tk){
            //redirect dengan pesan sukses
            return redirect()->route('data.tk.list')->with(['succes' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('data.tk.list')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function update(Request $request, $id)
    {

        // dd("error");

        $this->validate($request, [
            'kode_ref'      => 'required',
            'tp_id'         => 'required',
            'nama_tk'       => 'required',
            'narasi'        => 'required',
            'status_aktif'  => 'required'
        ]);

        //get data MasterTK by ID
        $data_tk = data_tk::findOrFail($id);

        if($request->file('image') == "") {

            $data_tk->update([
                'kode_ref'      => $request->kode_ref,
                'tp_id'         => $request->tp_id,
                'nama_tk'       => $request->nama_tk,
                'narasi'        => $request->narasi,
                'status_aktif'  => $request->status_aktif,
                'tahun_ajaran'  => $request->ta_id
            ]);

        } else {

            $data_tk->update([
                // 'image'     => $image->hashName(),
                'kode_ref'      => $request->kode_ref,
                'tp_id'         => $request->tp_id,
                'nama_tk'       => $request->nama_tk,
                'narasi'        => $request->narasi,
                'status_aktif'  => $request->status_aktif,
                'tahun_ajaran'  => $request->ta_id
            ]);

        }

        if($data_tk){
            //redirect dengan pesan sukses
            return redirect()->route('data.tk.list')->with(['succes' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('data.tk.list')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }
}
