<?php

namespace App\Http\Controllers\Walikelas;

use App\Models\Data\data_murid;
use App\Models\Walikelas\nilai_proyek;
use App\Models\Walikelas\tema_proyek;
use Illuminate\Http\Request;

class NilaiProyekController extends WalasController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Nilai Proyek (P5)"]];

        $periode=$this->periode->getPeriodeAktif();

        // DETAIL WALIKELAS
            $walikelas=$this->detail_walikelas();

        return view('content.Walikelas.Proyek.NilaiProyek.nilai_proyek',
        ['breadcrumbs' => $breadcrumbs, 'walikelas'=>$walikelas]);
    }

    public function tema_proyek_kelas(Request $request){
        $periode=$this->periode->getPeriodeAktif();

        $tema_proyek=tema_proyek::where('kelas_id', $request->id_kelas)
                                ->where('periode_id', $periode->id)
                                ->get();

        return $tema_proyek;
    }

    public function data_murid_kelas(Request $request){

        $periode=$this->periode->getPeriodeAktif();

        $murid=data_murid::where('kelas_id', $request->id_kelas)
                            ->where('tahunajaran_id', $periode->tahunajaran_id)
                            ->select('id','nama','absen')
                            ->orderby('absen')
                            ->get();

        return response()->json([ 'data' => $murid ]);
    }

    public function store(Request $request)
    {
        $periode=$this->periode->getPeriodeAktif();

        // dd($request->all());
        $tema=tema_proyek::find($request->add_tema_proyek);

        if (count($request['catatan']) > 0) {
            foreach($request['catatan'] as $idx_murid => $nilai){
                $data_siswa=data_murid::find($idx_murid);

                if (!empty($request['catatan'][$idx_murid])) {
                    $nilai_proyek=nilai_proyek::updateOrCreate(
                        ['id' => $request['id_nilai_proyek'][$idx_murid]],
                        ['nis' => $data_siswa->nis,
                        'nama' => $data_siswa->nama,
                        'kelas' => $data_siswa->kelas,
                        'tema_proyek' => $tema->tema_proyek,
                        'detail_proyek' =>$tema->deskripsi,
                        'catatan_proyek' => $request['catatan'][$idx_murid],
                        'periode_keterangan' =>$periode->periode,
                        'semester' => $periode->semester,
                        'tahunajaran' => $periode->tahunmulai."/".$periode->tahunselesai,
                        'murid_id' =>$data_siswa->id,
                        'kelas_id' =>$data_siswa->kelas_id,
                        'tema_proyek_id' =>$tema->id,
                        'periode_id' =>$periode->id]
                    );
                }
            }
        }
        return redirect()->back()->with('succes','Data Berhasil di Simpan');
    }

    public function edit_nilai(Request $request){
        $periode=$this->periode->getPeriodeAktif();

        $nilai_tema=nilai_proyek::where('tema_proyek_id', $request->id_tema)
                                ->where('kelas_id', $request->id_kelas)
                                ->where('periode_id', $periode->id)
                                ->get();
        return $nilai_tema;
    }
}
