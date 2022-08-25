<?php

namespace App\Http\Controllers\Master;

use App\Models\Master\MasterJenjang;
use Illuminate\Http\Request;

class MasterJenjangController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Jenjang"]];
        $jenjang=MasterJenjang::all();

        return view('content.Master.Jenjang.data_jenjang', [
            'breadcrumbs' => $breadcrumbs, 
            'jenjang' => $jenjang
        ]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            // 'image'     => 'required|image|mimes:png,jpg,jpeg',
            'nama_jenjang'     => 'required',
            'status_aktif'   => 'required'
        ]);

        //upload image
        // $image = $request->file('image');
        // $image->storeAs('public/blogs', $image->hashName());

        $masterjenjang = MasterJenjang::create([
            // 'image'     => $image->hashName(),
            'nama_jenjang'     => $request->nama_jenjang,
            'status_aktif'   => $request->status_aktif
        ]);

        if($masterjenjang){
            //redirect dengan pesan sukses
            return redirect()->route('master.jenjang.list')->with(['succes' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.jenjang.list')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'nama_jenjang'     => 'required',
            'status_aktif'   => 'required'
        ]);

        //get data MasterJenjang by ID
        $masterjenjang = MasterJenjang::findOrFail($id);

        if($request->file('image') == "") {

            $masterjenjang->update([
                'nama_jenjang'     => $request->nama_jenjang,
                'status_aktif'   => $request->status_aktif
            ]);

        } else {

            $masterjenjang->update([
                // 'image'     => $image->hashName(),
                'nama_jenjang'     => $request->nama_jenjang,
                'status_aktif'   => $request->status_aktif
            ]);

        }

        if($masterjenjang){
            //redirect dengan pesan sukses
            return redirect()->route('master.jenjang.list')->with(['succes' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.jenjang.list')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }
}
