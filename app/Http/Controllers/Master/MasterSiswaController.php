<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Master\MasterController;
use App\Models\Master\MasterSiswa;
use Illuminate\Http\Request;

class MasterSiswaController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Siswa"]];
        $MasterSiswas = MasterSiswa::latest()->paginate(10);

        return view('content.Master.Siswa.data_siswa', [
            'breadcrumbs' => $breadcrumbs,
            'siswa' => $MasterSiswas
        ]);
    }

    public function store(Request $request)
    {

        $this->validate($request, [
            // 'image'     => 'required|image|mimes:png,jpg,jpeg',
            'nis'          => 'required',
            'nik'          => 'required',
            'nama_siswa'   => 'required',
            'status'       => 'required',
            'tahun_masuk'  => 'required',
            'tahun_keluar' => 'nullable',
        ]);

        //upload image
        // $image = $request->file('image');
        // $image->storeAs('public/blogs', $image->hashName());

        $MasterSiswas = MasterSiswa::create([
            // 'image'     => $image->hashName(),
            'nis'          => $request->nis,
            'nik'          => $request->nik,
            'nama_siswa'   => $request->nama_siswa,
            'status'       => $request->status,
            'tahun_masuk'  => $request->tahun_masuk,
            'tahun_keluar' => $request->tahun_keluar,
       ]);


        if($MasterSiswas){
            //redirect dengan pesan sukses
            return redirect()->route('master.siswa.list')->with(['succes' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.siswa.list')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'nis'          => 'required',
            'nik'          => 'required',
            'nama_siswa'   => 'required',
            'status'       => 'required',
            'tahun_masuk'  => 'required',
            'tahun_keluar' => 'nullable',
        ]);

        //get data MasterSiswa by ID
        $MasterSiswas = MasterSiswa::findOrFail($id);

        if($request->file('image') == "") {

            $MasterSiswas->update([
                'nis'          => $request->nis,
                'nik'          => $request->nik,
                'nama_siswa'   => $request->nama_siswa,
                'status'       => $request->status,
                'tahun_masuk'  => $request->tahun_masuk,
                'tahun_keluar' => $request->tahun_keluar,
            ]);

        } else {

            $MasterSiswas->update([
                'nis'          => $request->nis,
                'nik'          => $request->nik,
                'nama_siswa'   => $request->nama_siswa,
                'status'       => $request->status,
                'tahun_masuk'  => $request->tahun_masuk,
                'tahun_keluar' => $request->tahun_keluar,
            ]);

        }

        if($MasterSiswas){
            //redirect dengan pesan sukses
            return redirect()->route('master.siswa.list')->with(['succes' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.siswa.list')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }
}
