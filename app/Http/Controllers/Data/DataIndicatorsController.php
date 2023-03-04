<?php

namespace App\Http\Controllers\Data;

use App\Models\Data\data_indicators;
use App\Models\Master\MasterArea;
use App\Models\Master\MasterCBI;
use App\Models\Master\MasterDevAchiev;
use App\Models\Master\MasterDoaharian;
use App\Models\Master\MasterEkstra;
use App\Models\Master\MasterHadist;
use App\Models\Master\MasterJenjang;
use App\Models\Master\MasterPeriode;
use App\Models\Master\MasterSemester;
use App\Models\Master\MasterTahfidz;
use App\Models\Master\MasterTahunAjaran;
use App\Models\Master\MasterTilawah;
use Illuminate\Http\Request;

class DataIndicatorsController extends DataController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data"], ['name' => "Indicators"]];

        $periode=MasterPeriode::all();
        $tahunajaran=MasterTahunAjaran::all();
        $jenjang=MasterJenjang::all();
        $semester=MasterSemester::all();
        $development=MasterDevAchiev::all();

        return view('content.Data.Indicators.indicators', ['breadcrumbs' => $breadcrumbs, 'periode'=>$periode, 'tahunajaran' => $tahunajaran, 'jenjang' => $jenjang, 'semester'=>$semester, 'development'=>$development]);
    }

    // DATA HALAMAN AWAL
        public function data_awal(Request $request)
        {
            $jenjang=explode("#", $request->jenjang_id);
            $indicators=data_indicators::where('periode_id', $request->periode_id)
                                        ->where('periode', $request->periode_semester)
                                        ->where('jenjang_id', $jenjang[0])
                                            ->get();
            return response()->json([ 'data' => $indicators ]);
        }

    // DATA INDICATORS
        // MASTER EKSTRA
            public function data_ekstra(Request $request)
            {
                $ekstra=MasterEkstra::where('status', "Aktif")
                                    ->orderby('ekstra')
                                    ->get();
                 return response()->json($ekstra);
            }

        //  MASTER DOA DOA HARIAN
            public function data_doa_harian(Request $request)
            {
                $doa_harian=MasterDoaharian::where('status', "Aktif")
                                    ->orderby('doa_harian')
                                    ->get();
                return response()->json($doa_harian);
            }

        // MASTER HADIST
            public function data_hadist(Request $request)
            {
                $hadist=MasterHadist::where('status', "Aktif")
                                    ->orderby('hadist')
                                    ->get();
                return response()->json($hadist);
            }

        // MASTER TILAWAH
            public function data_tilawah(Request $request)
            {
                $tilawah=MasterTilawah::where('status', "Aktif")
                                    ->orderby('tilawati')
                                    ->get();
                return response()->json($tilawah);
            }

        // MASTER TAHFIDZ
            public function data_tahfidz(Request $request)
            {
                $tahfidz=MasterTahfidz::where('status', "Aktif")
                                    ->orderby('surat')
                                    ->get();
                return response()->json($tahfidz);
            }

        // MASTER CBI
            public function data_cbi(Request $request)
            {
                $cbi=MasterCBI::where('status', "Aktif")
                                    ->orderby('cbi')
                                    ->get();
                return response()->json($cbi);
            }

    public function store(Request $request)
    {
        $indicators=explode("#", $request->indicators);
        $jenjang=explode("#", $request->add_jenjang);
        $dev=MasterDevAchiev::find($request->development);
        $periode=MasterPeriode::find($request->add_periode_id);

        data_indicators::create([
            'urutan' => $request->urutan,
            'area' => $dev->area->nama_area,
            'development' => $dev->nama_achievment,
            'indicators' => $indicators[1],
            'jenjang'   => $jenjang[1],
            'periode' => $request->add_periode_ajaran,
            'semester' => $periode->semester,
            'tahunajaran' => $periode->tahunmulai."/".$periode->tahunselesai,
            'area_id' => $dev->area_id,
            'development_id' => $dev->id,
            'jenjang_id'    => $jenjang[0],
            'master_id' => $indicators[0],
            'periode_id' => $periode->id,
        ]);

        return redirect()->route('data.indicators.list')->with('succes','Data Berhasil di Simpan');
    }

    // VIEW DATA MODAL
        public function view_data(Request $request)
        {
            $indicators=data_indicators::find($request->id);
            return response()->json($indicators);
        }

    public function update(Request $request)
    {
        if($request->status=="on"){
            $request->status="Aktif";
        }else{
            $request->status="Non Aktif";
        }
        $indicators=data_indicators::find($request->id);
        $indicators->status  = $request->status;

        $indicators->save();

        return redirect()->route('data.indicators.list')->with('succes','Data Berhasil di Ubah');
    }

}
