<?php

namespace App\Http\Controllers\Walikelas;

use App\Http\Controllers\Data\WalikelasController;
use App\Models\Data\data_murid;
use App\Models\Data\data_walikelas;
use App\Models\Master\MasterIndikatorStudentProfile;
use App\Models\Walikelas\studentprofile;
use App\Models\Walikelas\studentprofile_detail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class StudentProfileController extends WalasController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Student Profile"]];

        // DETAIL WALIKELAS
            $walikelas=$this->detail_walikelas(Auth::user()->data_id);

        return view('content.Walikelas.StudentProfile.studentprofile', ['breadcrumbs' => $breadcrumbs, 'walikelas' => $walikelas]);
    }

    public function add_nilai($id_walas)
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Input Nilai Student Profile"]];

        $periode=$this->periode->getPeriodeAktif();

        $walikelas=$this->walikelas($id_walas);
        // TAMPILAN MURID KELAS
            $murid   = $this->murid_kelas($walikelas->id);

        $master_indikator=MasterIndikatorStudentProfile::where('status', "Aktif")->get();
        $count_master_indikator=MasterIndikatorStudentProfile::where('status', "Aktif")->count();

        return view('content.Walikelas.StudentProfile.add_studentprofile', ['breadcrumbs' => $breadcrumbs, 'master_indikator' => $master_indikator, 'count_master_indikator' => $count_master_indikator, 'walikelas' => $walikelas, 'murid' => $murid,]);
    }

    public function store(Request $request)
    {
        $periode=$this->periode->getPeriodeAktif();
        if (count($request['nilai']) > 0) {

            foreach($request['nilai'] as $idx_murid => $valuestudentprofile) {

                $murid=data_murid::find($idx_murid);
                $nilai_studentprofile=studentprofile::UpdateOrCreate(
                    [   'id'    => $request['add_studentprofile_id'][$idx_murid]],
                    [   'nis'                   => $murid->nis,
                        'nama'                  => $murid->nama,
                        'kelas'                 => $murid->kelas,
                        'periode_keterangan'    => $periode->periode,
                        'semester'              => $periode->semester,
                        'tahunajaran'           => $periode->tahunmulai."/".$periode->tahunselesai,
                        'murid_id'              => $murid->id,
                        'kelas_id'              => $murid->kelas_id,
                        'jenjang_id'            => $murid->jenjang_id,
                        'periode_id'            => $periode->id
                    ]
                );
                foreach ($valuestudentprofile as $idx_indikator => $nilai) {

                    $master_indikator=MasterIndikatorStudentProfile::find($idx_indikator);
                    $nilai_studentprofile_detail=studentprofile_detail::UpdateOrCreate(
                        [   'id'    => $request['id_nilai'][$idx_murid][$idx_indikator]],
                        [   'indikator'                         => $master_indikator->indikator_studentprofile,
                            'nilai'                             => $request['nilai'][$idx_murid][$idx_indikator],
                            'master_indikator_studentprofile_id'=> $master_indikator->id,
                            'nilai_studentprofile_id'           => $nilai_studentprofile->id
                        ]
                    );
                }
            }
        }

        return redirect()->back()->with('succes','Data Berhasil di Simpan');
    }

    public function edit_nilai(Request $request)
    {
        $walikelas=data_walikelas::find($request->id_walikelas);
        $periode=$this->periode->getPeriodeAktif();

        $nilai_studentprofile=studentprofile::rightjoin('nilai_studentprofile_detail', 'nilai_studentprofile_detail.nilai_studentprofile_id', '=', 'nilai_studentprofile.id')
                                        ->select('nilai_studentprofile.id', 'nilai_studentprofile.nis', 'nilai_studentprofile.nama', 'nilai_studentprofile.kelas', DB::raw('group_concat(nilai_studentprofile_detail.indikator SEPARATOR ",") AS indikator'), DB::raw('group_concat(nilai_studentprofile_detail.nilai SEPARATOR ",") AS nilai'), 'nilai_studentprofile.periode_keterangan', 'nilai_studentprofile.semester', 'nilai_studentprofile.tahunajaran', 'nilai_studentprofile.murid_id', DB::raw('group_concat(nilai_studentprofile_detail.id SEPARATOR ",") AS student_profile_detail_id'), DB::raw('group_concat(nilai_studentprofile_detail.master_indikator_studentprofile_id SEPARATOR ",") AS master_indikator_id'),)
                                        ->where('kelas_id', $walikelas->kelas_id)
                                        ->where('periode_keterangan', $periode->periode)
                                        ->where('periode_id', $periode->id)
                                        ->groupBy('nilai_studentprofile.id', 'nilai_studentprofile.nis', 'nilai_studentprofile.nama', 'nilai_studentprofile.kelas', 'nilai_studentprofile.periode_keterangan', 'nilai_studentprofile.semester', 'nilai_studentprofile.tahunajaran', 'nilai_studentprofile.murid_id')
                                        ->get();

        return $nilai_studentprofile;
    }
}
