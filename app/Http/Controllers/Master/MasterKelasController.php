<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Master\MasterController;
use App\Models\Master\MasterJenjang;
use App\Models\Master\MasterKelas;
use Illuminate\Http\Request;

class MasterKelasController extends MasterController{
    
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Kelas"]];
        $MasterKelas = MasterKelas::latest()->paginate(10);

        $jenjang = MasterJenjang::all();

        return view('content.Master.Kelas.data_kelas', [
            'breadcrumbs' => $breadcrumbs,
            'kelas' => $MasterKelas,
            'jenjang' => $jenjang
        ]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            // 'image'     => 'required|image|mimes:png,jpg,jpeg',
            'nama_kelas'     => 'required',
            'jenjang'   => 'required',
            'status'   => 'required'
        ]);

        // insert data ke dalam database
        $MasterKelas = MasterKelas::create([
            // 'image'     => $image->hashName(),
            'nama_kelas'     => $request->nama_kelas,
            'jenjang'     => $request->jenjang,
            'status'   => $request->status
        ]);

        if($MasterKelas){
            //redirect dengan pesan sukses
            return redirect()->route('master.kelas.list')->with(['succes' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.kelas.list')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'nama_kelas'     => 'required',
            'jenjang'   => 'required',
            'status'   => 'required'
        ]);

        //get data MasterKelas by ID
        $MasterKelas2 = MasterKelas::findOrFail($id);

        // dd($MasterKelas2);

        if($request->file('image') == "") {

            $MasterKelas2->update([
                'nama_kelas'     => $request->nama_kelas,
                'jenjang'   => $request->jenjang,
                'status'   => $request->status
            ]);

        } else {

            $MasterKelas2->update([
                // 'image'     => $image->hashName(),
                'nama_kelas'     => $request->nama_kelas,
                'jenjang'   => $request->jenjang,
                'status'   => $request->status
            ]);

        }

        if($MasterKelas2){
            //redirect dengan pesan sukses
            return redirect()->route('master.kelas.list')->with(['succes' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.kelas.list')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }

}
