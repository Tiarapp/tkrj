<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Master\MasterController;
use App\Models\Master\MasterSemester;
use App\Models\Master\MasterTahunAjaran;
use App\Models\Master\MasterPeriode;
use Illuminate\Http\Request;

class MasterPeriodeController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Periode"]];

        $periode=MasterPeriode::all();
        $tahunajaran=MasterTahunAjaran::all();
        $semester=MasterSemester::all();

        return view('content.Master.Periode.data_periode', ['breadcrumbs' => $breadcrumbs, 'tahunajaran' => $tahunajaran, 'semester' => $semester, 'periode' => $periode]);
    }

    public function store(Request $request)
    {
        $arraytahunajaran = explode("#",$request->tahunajaran_id);
        $arraysemester = explode("#",$request->semester_id);
        MasterPeriode::create([
            'tahunajaran_id'    => $arraytahunajaran[0],
            'tahunmulai'        => $arraytahunajaran[1],
            'tahunselesai'      => $arraytahunajaran[2],
            'semester_id'       => $arraysemester[0],
            'semester'          => $arraysemester[1],
            'periode'           => $request->periode,
            'status'            => $request->status,
        ]);

        return redirect()->route('master.periode.list')->with('succes','Data Berhasil di Simpan');
    }

    public function update(Request $request, $id)
    {
        // return $request->all();
        $arraysemester = explode("#",$request->semester_id);
        $data_semester=MasterPeriode::find($id);
        $data_semester->semester_id = $arraysemester[0];
        $data_semester->semester    = $arraysemester[1];
        $data_semester->periode     = $request->periode;
        $data_semester->status      = $request->status;
        $data_semester->save();

        return redirect()->route('master.periode.list')->with('succes','Data Berhasil di Ubah');
    }
}
