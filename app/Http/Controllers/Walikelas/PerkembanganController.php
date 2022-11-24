<?php

namespace App\Http\Controllers\Walikelas;

use App\Models\Data\data_murid;
use App\Models\Master\MasterPerkembangan;
use App\Models\Walikelas\perkembangan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PerkembanganController extends WalasController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Perkembangan"]];

        // DETAIL WALIKELAS
            $walikelas=$this->detail_walikelas(Auth::user()->data_id);

        return view('content.Walikelas.Perkembangan.perkembangan', ['breadcrumbs' => $breadcrumbs, 'walikelas'=>$walikelas]);
    }

    public function list_siswa($id_walas){
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Walikelas"], ['name' => "List Siswa"]];
        $periode=$this->periode->getPeriodeAktif();

        $master_perkembangan=MasterPerkembangan::where('status_aktif', 1)->get();
        // return $master_perkembangan;
        $walikelas=$this->walikelas($id_walas);
        // TAMPILAN MURID KELAS
            $murid   = $this->murid_kelas($walikelas->id);

        return view('content.Walikelas.Perkembangan.add_perkembangan', ['breadcrumbs' => $breadcrumbs, 'murid'=>$murid, 'walikelas'=>$walikelas, 'master_perkembangan'=>$master_perkembangan]);
    }

    public function store(Request $request)
    {
        $periode=$this->periode->getPeriodeAktif();

        $murid=data_murid::find($request->id_murid);
        if (count($request['nilai']) > 0) {
            foreach($request['nilai'] as $idx_master_perkembangan => $nilai) {

                if (!empty($request['nilai'][$idx_master_perkembangan])) {
                    $perkembangan=MasterPerkembangan::leftjoin('master_kategoris', 'master_perkembangan.kategori_id', '=', 'master_kategoris.id')
                                                    ->where('master_perkembangan.status_aktif', 1)
                                                    ->where('master_perkembangan.id', $idx_master_perkembangan)
                                                    ->select('master_kategoris.nama_kategori', 'master_perkembangan.perkembangan', 'master_kategoris.id as master_kategori_id', 'master_perkembangan.id as master_perkembangan_id')
                                                    ->first();

                    // dd($request['nilai'][$idx_master_perkembangan]);
                    $nilai_perkembangan=perkembangan::UpdateOrCreate(
                        [   'id'    => $request['id_nilai'][$idx_master_perkembangan]],
                        [   'nis'                   => $murid->nis,
                            'nama'                  => $murid->nama,
                            'kelas'                 => $murid->kelas,
                            'master_kategori'       => $perkembangan->perkembangan,
                            'master_perkembangan'   => $perkembangan->nama_kategori,
                            'nilai'                 => $request['nilai'][$idx_master_perkembangan],
                            'periode_keterangan'    => $periode->periode,
                            'semester'              => $periode->semester,
                            'tahunajaran'           => $periode->tahunmulai."/".$periode->tahunselesai,
                            'murid_id'              => $murid->id,
                            'kelas_id'              => $murid->kelas_id,
                            'jenjang_id'            => $murid->jenjang_id,
                            'master_kategori_id'    => $perkembangan->master_kategori_id,
                            'master_perkembangan_id'=> $perkembangan->master_perkembangan_id,
                            'periode_id'            => $periode->id,
                        ]
                    );
                }
            }
        }

        return redirect()->back()->with('succes','Data Berhasil di Simpan');
    }

    public function edit_nilai(Request $request)
    {
        $periode=$this->periode->getPeriodeAktif();

        $nilai_perkembangan=perkembangan::where('murid_id', $request->id_murid)
                                        ->where('periode_keterangan', $periode->periode)
                                        ->where('periode_id', $periode->id)
                                        ->get();
        return $nilai_perkembangan;
    }
}
