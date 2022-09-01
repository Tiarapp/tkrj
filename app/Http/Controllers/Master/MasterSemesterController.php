<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Master\MasterController;
use App\Models\Master\MasterJenjang;
use App\Models\Master\MasterSemester;
use App\Models\Master\MasterTahunAjaran;
use Illuminate\Http\Request;

class MasterSemesterController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Semester"]];
        $semester = MasterSemester::latest()->paginate(10);

        $tahun = MasterTahunAjaran::all();
        $jenjang = MasterJenjang::all();

        return view('content.Master.Semester.data_semester', [
            'breadcrumbs' => $breadcrumbs,
            'semester' => $semester,
            'tahun' => $tahun,
            'jenjang' => $jenjang
        ]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'semester'   => 'required',
            'jenjang_id'        => 'required',
            'thnajaran_id'         => 'required',
            'status'        => 'required',
        ]);

        // dd($request->semester);

        $semester = MasterSemester::create([
            'nama_semester'          => $request->semester,
            'jenjang_id'        => $request->jenjang_id,
            'tahun_ajaran_id'   => $request->thnajaran_id,
            'status'            => $request->status
        ]);

        if($semester){
            //redirect dengan pesan sukses
            return redirect()->route('master.semester.list')->with(['succes' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.semester.list')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'semester'      => 'required',
            'jenjang_id'    => 'required',
            'thnajaran_id'  => 'required',
            'status'        => 'required',
        ]);

        // dd($request->elemen);
        //get data MasterTP by ID
        $semester = MasterSemester::findOrFail($id);

        // dd($semester);

        if($request->file('image') == "") {

            $semester->update([
                'nama_semester'     => $request->semester,
                'jenjang_id'        => $request->jenjang_id,
                'tahun_ajaran_id'   => $request->thnajaran_id,
                'status'            => $request->status
            ]);

        } else {

            $semester->update([
                'nama_semester'     => $request->semester,
                'jenjang_id'        => $request->jenjang_id,
                'tahun_ajaran_id'   => $request->thnajaran_id,
                'status'            => $request->status
            ]);

        }

        if($semester){
            //redirect dengan pesan sukses
            return redirect()->route('master.semester.list')->with(['succes' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.semester.list')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }

}
