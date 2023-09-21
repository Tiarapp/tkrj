<?php

namespace App\Http\Controllers\Data;

use App\Models\Data\data_cp;
use App\Models\Master\MasterTahunAjaran;
use Illuminate\Http\Request;

class DataCPController extends DataController
{
    public function index()
    {
        $tahun_ajaran = MasterTahunAjaran::all();
        $data_cp = data_cp::orderBy('id', 'asc')->paginate(10);

        // dd($MasterCP);
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data"], ['name' => "CP"]];

        return view('content.Data.CapaianPembelajaran.data_cp', [
            'breadcrumbs' => $breadcrumbs,
        ], compact('data_cp', 'tahun_ajaran'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            // 'image'     => 'required|image|mimes:png,jpg,jpeg',
            'nama_cp'       => 'required',
            'keterangan'    => 'required',
            'narasi'        => 'required',
            'status_aktif'  => 'required',
            'tahunajaran_id'=> 'required'
        ]);

        //upload image
        // $image = $request->file('image');
        // $image->storeAs('public/blogs', $image->hashName());

        $data_cp = data_cp::create([
            // 'image'     => $image->hashName(),
            'nama_cp'       => $request->nama_cp,
            'status_aktif'  => $request->status_aktif,
            'narasi'        => $request->narasi,
            'keterangan'    => $request->keterangan,
            'tahunajaran_id'=> $request->ta_id
        ]);

        if($data_cp){
            //redirect dengan pesan sukses
            return redirect()->route('data.cp.list')->with(['succes' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('data.cp.list')->with(['error' => 'Data Gagal Disimpan!']);
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
        $data_cp = data_cp::findOrFail($id);

        if($request->file('image') == "") {

            $data_cp->update([
                'nama_cp'     => $request->nama_cp,
                'status_aktif'   => $request->status_aktif,
                'narasi'        => $request->narasi,
                'keterangan'    => $request->keterangan,
            ]);

        } else {

            $data_cp->update([
                // 'image'     => $image->hashName(),
                'nama_cp'     => $request->nama_cp,
                'status_aktif'   => $request->status_aktif
            ]);

        }

        if($data_cp){
            //redirect dengan pesan sukses
            return redirect()->route('data.cp.list')->with(['succes' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('data.cp.list')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }
}
