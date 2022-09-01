<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Master\MasterController;
use App\Models\Master\MasterSiswa;
use App\Models\Master\MasterTahunAjaran;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MasterSiswaController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Siswa"]];
        $MasterSiswas = MasterSiswa::latest()->paginate(10);
        $tahunajaran_raport=MasterTahunAjaran::all();

        // dd($tahunajaran_raport);

        // DATABASE PPDB
            $datasiswa = DB::connection('mysql_ppdb')->table('smp_datasiswa')
                                                ->get();
            $tahunajaran_ppdb = DB::connection('mysql_ppdb')->table('thn_ajaran_ppdb')
                                                        ->get();

        return view('content.Master.Siswa.data_siswa', [
            'breadcrumbs' => $breadcrumbs,
            'siswa' => $MasterSiswas,
            'tahunajaran_raport' => $tahunajaran_raport,
            'tahunajaran_ppdb' => $tahunajaran_ppdb
        ]);
    }

    public function get_siswa(Request $request)
    {
        $siswa = MasterSiswa::where('tahunajaran_id', $request->tahunajaran)
            ->orderBy('nis')
            ->get();

        return response()->json([ 'data' => $siswa ]);
    }

    // FILTER TAHUNAJARAN PPDB
    public function get_siswa_ppdb(Request $request){
        $siswa_ppdb = DB::connection('mysql_ppdb')->table('tk_datasiswa')
                    ->select('tk_datasiswa.*', 'thn_ajaran_ppdb.id as id_tahunajaran', 'thn_ajaran_ppdb.mulai', 'thn_ajaran_ppdb.selesai')
                    ->join('thn_ajaran_ppdb', 'tk_datasiswa.tahunajaran_id', '=', 'thn_ajaran_ppdb.id')
                    ->where('tk_datasiswa.tahunajaran_id', $request->tahunajaran_ppdb)
                    ->orderBy('tk_datasiswa.nm_lengkap')
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
        // dd($request);
        if (count($request['nis']) > 0) {
            foreach ($request->pendaftaran_id as $idx_pendaftaran_id => $val_pendaftaran_id) {
                // dd($request->tahunajaran_id);

                if ($request['nis'][$idx_pendaftaran_id] !== NULL) {
                    // KOLOM DATA YG HARUS DIISI
                    MasterSiswa::create([
                        'tahunajaran_id'=> $thn_ajaran->id,
                        'tahunajaran'   => $thn_ajaran->tahunajaran,
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
