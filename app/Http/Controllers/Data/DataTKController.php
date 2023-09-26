<?php

namespace App\Http\Controllers\Data;

use App\Models\Data\data_tk;
use App\Models\Data\data_tp;
use App\Models\Master\MasterJenjang;
use App\Models\Master\MasterTahunAjaran;
use Illuminate\Http\Request;

class DataTKController extends DataController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data"], ['name' => "TK"]];
        
        $tahun_ajaran = MasterTahunAjaran::all();
        $data_tk = data_tk::latest()->paginate(10); 

        $data_tp = data_tp::where('cp_id', '5')->get();
        $jenjang = MasterJenjang::all();

        return view('content.Data.TujuanKegiatan.data_tk', [
            'breadcrumbs' => $breadcrumbs,
            'data_tk' => $data_tk,
            'data_tp' => $data_tp,
            'tahun_ajaran' => $tahun_ajaran,
            'jenjang'   => $jenjang
        ]);
    }

    public function store(Request $request)
    {
        // $this->validate($request, [
        //     'kode_ref'          => 'required',
        //     'tp_id'             => 'required',
        //     'tujuan_kegiatan'   => 'required',
        //     'status_aktif'      => 'required',
        //     'tahun_ajaran'      => 'required'
        // ]);
        $tp = explode('#', $request->tp_id);
        $jenjang = explode('#', $request->jenjang);
        $data_tk = data_tk::create([
            'kode_ref'              => $request->kode_ref,
            'tujuan_kegiatan'       => $request->nama_tk,
            'tp_id'                 => $tp[0],
            'tujuan_pembelajaran'   => $tp[1],
            'cp_id'                 => $tp[2],
            'jenjang_id'            => $jenjang[0],
            'jenjang'               => $jenjang[1],
            'no'                    => $request->no,
            'status_aktif'          => $request->status_aktif,
            'tahunajaran_id'        => $request->ta_id
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
