<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Master\MasterController;
use App\Models\Master\MasterKelas;
use App\Models\Master\MasterPeriode;
use App\Models\Master\MasterSiswa;
use App\Models\Master\MasterTahunAjaran;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MasterSiswaController extends MasterController
{
    public function __construct() {
        $this->periode=new MasterPeriode();
    }

    public function index()
    {
        $periode=$this->periode->getPeriodeAktif();

        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Data Siswa"]];

        // $kelas=MasterKelas::where('jenjang_id', 2)
        //                     ->get();
        $kelas=MasterKelas::all();
        $tahunajaran_raport=MasterTahunAjaran::all();

        // DATABASE PPDB
            $datasiswa = DB::connection('mysql_ppdb')->table('tk_datasiswa')
                                                ->get();
            $tahunajaran_ppdb = DB::connection('mysql_ppdb')->table('thn_ajaran_ppdb')
                                                        ->get();
        // dd($tahunajaran_ppdb);
        return view('content.Master.Siswa.data_siswa', ['breadcrumbs' => $breadcrumbs, 'datasiswa' => $datasiswa, 'tahunajaran_raport' => $tahunajaran_raport, 'tahunajaran_ppdb' => $tahunajaran_ppdb, 'kelas' => $kelas]);
    }

    // FILTER TAHUNAJARAN SISWA
        public function get_siswa(Request $request){

            $siswa=MasterSiswa::where('tahunajaran_id', $request->tahunajaran)
                                ->orderBy('nis')
                                ->get();
            return response()->json([ 'data' => $siswa ]);
        }

    // FILTER TAHUNAJARAN PPDB
        public function get_siswa_ppdb(Request $request){
            $siswa_ppdb = DB::connection('mysql_ppdb')->table('tk_datasiswa')
                            ->where('tahunajaran_id', $request->tahunajaran_ppdb)
                            ->orderBy('nm_lengkap')
                            ->get();
            return response()->json([ 'data' => $siswa_ppdb ]);
        }

    public function store(Request $request)
    {
        $messages = [
            'required'  => 'Pilih Tahun Ajaran di Halaman Awal',
        ];

        $this->validate($request,[
            'thn_ajaran_masuk' => 'required'
        ],$messages);

        $thn_ajaran=MasterTahunAjaran::find($request->thn_ajaran_masuk);
        $request->tahunajaran_id=$thn_ajaran;
        // dd($request->pendaftaran_id);
        if (count($request['nis']) > 0) {
            foreach ($request->pendaftaran_id as $idx_pendaftaran_id => $val_pendaftaran_id) {
                // dd($request->tahunajaran_id);

                if ($request['nis'][$idx_pendaftaran_id] !== NULL) {
                    // KOLOM DATA YG HARUS DIISI

                    dd($request['nik'][$idx_pendaftaran_id]);
                    MasterSiswa::create([
                        'tahunajaran_id'=> $thn_ajaran->id,
                        'tahunajaran'   => $thn_ajaran->tahun_ajaran,
                        'pendaftaran_id'=> $val_pendaftaran_id,
                        'pendaftaran'   => $request['pendaftaran'][$idx_pendaftaran_id],
                        'nik'           => $request['nik'][$idx_pendaftaran_id],
                        'nis'           => $request['nis'][$idx_pendaftaran_id],
                        'nama'          => $request['nama'][$idx_pendaftaran_id],
                    ]);
                }
            }
        }

        return redirect()->route('master.siswa.list')->with('success','Data Berhasil di Simpan');
    }
}
