<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Master\MasterController;
use App\Models\Master\MasterKategori;
use Illuminate\Http\Request;

class MasterKategoriController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Kategori"]];
        $kategori = MasterKategori::latest()->paginate(10);

        return view('content.Master.kategori.data_kategori', [
            'breadcrumbs' => $breadcrumbs,
            'kategori' => $kategori
        ]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            // 'image'     => 'required|image|mimes:png,jpg,jpeg',
            'nama_kategori' => 'required',
            'keterangan'    => 'required',
            'status_aktif'  => 'required'
        ]);

        $masterkategori = MasterKategori::create([
            // 'image'     => $image->hashName(),
            'nama_kategori'  => $request->nama_kategori,
            'keterangan'     => $request->keterangan,
            'status_aktif'   => $request->status_aktif
        ]);

        if($masterkategori){
            //redirect dengan pesan sukses
            return redirect()->route('master.kategori.list')->with(['succes' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.kategori.list')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'nama_kategori'     => 'required',
            'keterangan'    => 'required',
            'status_aktif'   => 'required'
        ]);

        //get data MasterKategori by ID
        $masterkategori = MasterKategori::findOrFail($id);

        if($request->file('image') == "") {

            $masterkategori->update([
                'nama_kategori'     => $request->nama_kategori,
                'keterangan'     => $request->keterangan,
                'status_aktif'   => $request->status_aktif
            ]);

        } else {

            $masterkategori->update([
                // 'image'     => $image->hashName(),
                'nama_kategori'     => $request->nama_kategori,
                'keterangan'     => $request->keterangan,
                'status_aktif'   => $request->status_aktif
            ]);

        }

        if($masterkategori){
            //redirect dengan pesan sukses
            return redirect()->route('master.kategori.list')->with(['succes' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.kategori.list')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }
}
