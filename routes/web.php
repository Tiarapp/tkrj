<?php

use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Data\DataCBIController;
use App\Http\Controllers\Data\DataCPController;
use App\Http\Controllers\Data\DataElemenCPController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StaterkitController;
use App\Http\Controllers\LanguageController;

// MASTER
    use App\Http\Controllers\Master\MasterAreaController;
    use App\Http\Controllers\Master\MasterCPController;
    use App\Http\Controllers\Master\MasterDevacController;
    use App\Http\Controllers\Master\MasterElemenCPController;
    use App\Http\Controllers\Master\MasterGuruController;
    use App\Http\Controllers\Master\MasterIndikatorController;
    use App\Http\Controllers\Master\MasterJenjangController;
    use App\Http\Controllers\Master\MasterKategoriController;
    use App\Http\Controllers\Master\MasterTahunajaranController;
    use App\Http\Controllers\Master\MasterKelasController;
    use App\Http\Controllers\Master\MasterPeriodeController;
    use App\Http\Controllers\Master\MasterPerkembanganController;
    use App\Http\Controllers\Master\MasterSemesterController;
    use App\Http\Controllers\Master\MasterSiswaController;
    use App\Http\Controllers\Master\MasterSkillValueController;
    use App\Http\Controllers\Master\MasterTKController;
    use App\Http\Controllers\Master\MasterTPController;
    use App\Http\Controllers\Master\MasterEkstraController;
    use App\Http\Controllers\Master\MasterTahfidzController;
    use App\Http\Controllers\Master\MasterTilawahController;
    use App\Http\Controllers\Master\MasterDoaharianController;
    use App\Http\Controllers\Master\MasterHadistController;
    use App\Http\Controllers\Master\MasterCBIController;
    use App\Http\Controllers\Master\MasterAkunController;

// DATA
    use App\Http\Controllers\Data\DataMuridController;
    use App\Http\Controllers\Data\DataPengajarController;
    use App\Http\Controllers\Data\WalikelasController;
    use App\Http\Controllers\Data\DataIndicatorsController;
use App\Http\Controllers\Data\DataTKController;
use App\Http\Controllers\Data\DataTPController;
// NILAI
    use App\Http\Controllers\Nilai\NilaiDoaController;
    use App\Http\Controllers\Nilai\NilaiEkstraController;
    use App\Http\Controllers\Nilai\NilaiHadistController;
    use App\Http\Controllers\Nilai\NilaiIbadahController;
    use App\Http\Controllers\Nilai\NilaiTahfidzController;
    use App\Http\Controllers\Nilai\NilaiTilawahController;
    use App\Http\Controllers\Nilai\NilaiAkademikController;
    use App\Http\Controllers\Nilai\NilaiCBIController;
// Raport
    use App\Http\Controllers\Raport\RaportEkstraController;
    use App\Http\Controllers\Raport\RaportAkademikController;

// WALIKELAS
    use App\Http\Controllers\Walikelas\AbsenController;
    use App\Http\Controllers\Walikelas\NarasiRaportController;
    use App\Http\Controllers\Walikelas\NilaiProyekController;
    use App\Http\Controllers\Walikelas\PerkembanganController;
    use App\Http\Controllers\Walikelas\ProyekController;
    use App\Http\Controllers\Walikelas\SaranTemaController;
    use App\Http\Controllers\Walikelas\StudentProfileController;
    use App\Http\Controllers\Walikelas\TemaProyekController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// AUTH-------------------------------------------------------------------------------------------------------------
Route::group(['prefix' => 'Auth', 'as' => 'auth.'], function() {
    // LOGIN
        Route::get('/login_pegawai', [LoginController::class, 'login_pegawai'])->name('login_pegawai');
        Route::post('/login_pegawai/authenticate_pegawai',[LoginController::class, 'authenticate_pegawai'])->name('authenticate_pegawai');
        Route::get('/logout', [LoginController::class, 'logout'])->name('logout');

    // REGISTER
        Route::get('/register', [RegisterController::class, 'register'])->name('register');

        Route::get('/register/dataguru', [RegisterController::class, 'dataguru'])->name('dataguru');
        // Route::get('/register/dataguruekstra', [RegisterController::class, 'dataguruekstra'])->name('dataguruekstra');
        Route::get('/register/datawalikelas', [RegisterController::class, 'datawalikelas'])->name('datawalikelas');
        // Route::get('/register/datawalikelas', [RegisterController::class, 'datawalikelas'])->name('datawalikelas');
});

Route::get('/', [LoginController::class, 'login_pegawai'])->name('login');
Route::get('home', [StaterkitController::class, 'home'])->name('home');
// Route Components
Route::get('layouts/collapsed-menu', [StaterkitController::class, 'collapsed_menu'])->name('collapsed-menu');
Route::get('layouts/full', [StaterkitController::class, 'layout_full'])->name('layout-full');
Route::get('layouts/without-menu', [StaterkitController::class, 'without_menu'])->name('without-menu');
Route::get('layouts/empty', [StaterkitController::class, 'layout_empty'])->name('layout-empty');
Route::get('layouts/blank', [StaterkitController::class, 'layout_blank'])->name('layout-blank');


// locale Route
Route::get('lang/{locale}', [LanguageController::class, 'swap']);

    // MASTER AKUN
        Route::group(['prefix' => 'Master/Akun', 'as' => 'master.akun.'], function() {
            Route::get('', [MasterAkunController::class, 'index'])->name('list');
            Route::post('/add',[MasterAkunController::class, 'store'])->name('add');
            Route::put('/edit',[MasterAkunController::class, 'update'])->name('edit');
        });

    // Master Tahun Ajaran
        Route::group(['prefix' => 'Master/Tahun Ajaran', 'as' => 'master.tahunajaran.'], function() {
            Route::get('', [MasterTahunajaranController::class, 'index'])->name('list');
            Route::post('/add',[MasterTahunajaranController::class, 'store'])->name('add');
            Route::put('/edit{id}',[MasterTahunajaranController::class, 'update'])->name('edit');
        });

    // MASTER SEMESTER
        Route::group(['prefix' => 'Master/Semester', 'as' => 'master.semester.'], function() {
            Route::get('', [MasterSemesterController::class, 'index'])->name('list');
            Route::post('/add',[MasterSemesterController::class, 'store'])->name('add');
            Route::put('/edit{id}',[MasterSemesterController::class, 'update'])->name('edit');
        });

    // MASTER PERIODE
        Route::group(['prefix' => 'Master/Periode', 'as' => 'master.periode.'], function() {
            Route::get('', [MasterPeriodeController::class, 'index'])->name('list');
            Route::post('/add',[MasterPeriodeController::class, 'store'])->name('add');
            Route::put('/edit{id}',[MasterPeriodeController::class, 'update'])->name('edit');
        });

    // MASTER KELAS
        Route::group(['prefix' => 'Master/Kelas', 'as' => 'master.kelas.'], function() {
            Route::get('', [MasterKelasController::class, 'index'])->name('list');
            Route::post('/add',[MasterKelasController::class, 'store'])->name('add');
            Route::put('/edit{id}',[MasterKelasController::class, 'update'])->name('edit');
        });

    // MASTER GURU
        Route::group(['prefix' => 'Master/Guru', 'as' => 'master.guru.'], function() {
            Route::get('', [MasterGuruController::class, 'index'])->name('list');
            Route::post('/add',[MasterGuruController::class, 'store'])->name('add');
            Route::put('/edit{id}',[MasterGuruController::class, 'update'])->name('edit');
        });

    // MASTER SISWA
        Route::group(['prefix' => 'Master/Siswa', 'as' => 'master.siswa.'], function() {
            Route::get('', [MasterSiswaController::class, 'index'])->name('list');
            Route::post('/add',[MasterSiswaController::class, 'store'])->name('add');
            Route::put('/edit{id}',[MasterSiswaController::class, 'update'])->name('edit');
            Route::get('/get_siswa',[MasterSiswaController::class, 'get_siswa'])->name('get_siswa');
            Route::get('/get_siswa_ppdb',[MasterSiswaController::class, 'get_siswa_ppdb'])->name('get_siswa_ppdb');
            Route::get('/print{id}',[MasterSiswaController::class, 'print'])->name('print');
        });

    // MASTER CP
        Route::group(['prefix' => 'Master/Capaian Pembelajaran', 'as' => 'master.cp.'], function() {
            Route::get('', [MasterCPController::class, 'index'])->name('list');
            Route::post('/add',[MasterCPController::class, 'store'])->name('add');
            Route::put('/edit{id}',[MasterCPController::class, 'update'])->name('edit');
        });

    // MASTER Elemen CP
        Route::group(['prefix' => 'Master/Elemen Capaian Pembelajaran', 'as' => 'master.elemen.'], function() {
            Route::get('', [MasterElemenCPController::class, 'index'])->name('list');
            Route::post('/add',[MasterElemenCPController::class, 'store'])->name('add');
            Route::put('/edit{id}',[MasterElemenCPController::class, 'update'])->name('edit');
        });

    // MASTER TP
        Route::group(['prefix' => 'Master/Tujuan Pembelajaran', 'as' => 'master.tp.'], function() {
            Route::get('', [MasterTPController::class, 'index'])->name('list');
            Route::post('/add',[MasterTPController::class, 'store'])->name('add');
            Route::put('/edit{id}',[MasterTPController::class, 'update'])->name('edit');
        });

    // MASTER TK
        Route::group(['prefix' => 'Master/Tujuan Kegiatan', 'as' => 'master.tk.'], function() {
            Route::get('', [MasterTKController::class, 'index'])->name('list');
            Route::post('/add',[MasterTKController::class, 'store'])->name('add');
            Route::put('/edit{id}',[MasterTKController::class, 'update'])->name('edit');
        });

    // MASTER Kategori
        Route::group(['prefix' => 'Master/Kategori', 'as' => 'master.kategori.'], function() {
            Route::get('', [MasterKategoriController::class, 'index'])->name('list');
            Route::post('/add',[MasterKategoriController::class, 'store'])->name('add');
            Route::put('/edit{id}',[MasterKategoriController::class, 'update'])->name('edit');
        });

    // MASTER Jenjang
        Route::group(['prefix' => 'Master/Jenjang', 'as' => 'master.jenjang.'], function() {
            Route::get('', [MasterJenjangController::class, 'index'])->name('list');
            Route::post('/add',[MasterJenjangController::class, 'store'])->name('add');
            Route::put('/edit{id}',[MasterJenjangController::class, 'update'])->name('edit');
        });

    // MASTER Skill Value
        Route::group(['prefix' => 'Master/Skill Value', 'as' => 'master.skillvalue.'], function() {
            Route::get('', [MasterSkillValueController::class, 'index'])->name('list');
            Route::post('/add',[MasterSkillValueController::class, 'store'])->name('add');
            Route::put('/edit{id}',[MasterSkillValueController::class, 'update'])->name('edit');
        });

    // MASTER Perkembangan
        Route::group(['prefix' => 'Master/Perkembangan', 'as' => 'master.perkembangan.'], function() {
            Route::get('', [MasterPerkembanganController::class, 'index'])->name('list');
            Route::post('/add',[MasterPerkembanganController::class, 'store'])->name('add');
            Route::put('/edit{id}',[MasterPerkembanganController::class, 'update'])->name('edit');
        });

    // MASTER AREA DEVELOPMENT
        Route::group(['prefix' => 'Master/Areas Dev', 'as' => 'master.area.'], function() {
            Route::get('', [MasterAreaController::class, 'index'])->name('list');
            Route::post('/add',[MasterAreaController::class, 'store'])->name('add');
            Route::put('/edit{id}',[MasterAreaController::class, 'update'])->name('edit');
        });

    // MASTER Development Achievment
        Route::group(['prefix' => 'Master/DevAchiev', 'as' => 'master.devac.'], function() {
            Route::get('', [MasterDevacController::class, 'index'])->name('list');
            Route::post('/add',[MasterDevacController::class, 'store'])->name('add');
            Route::put('/edit{id}',[MasterDevacController::class, 'update'])->name('edit');
        });

    // MASTER EKSTRA
        Route::group(['prefix' => 'Master/Ekstra', 'as' => 'master.ekstra.'], function() {
            Route::get('', [MasterEkstraController::class, 'index'])->name('list');
            Route::post('/add',[MasterEkstraController::class, 'store'])->name('add');
            Route::put('/edit',[MasterEkstraController::class, 'update'])->name('edit');
        });

    // MASTER TAHFIDZ
        Route::group(['prefix' => 'Master/Tahfidz', 'as' => 'master.tahfidz.'], function() {
            Route::get('', [MasterTahfidzController::class, 'index'])->name('list');
            Route::post('/add',[MasterTahfidzController::class, 'store'])->name('add');
            Route::put('/edit',[MasterTahfidzController::class, 'update'])->name('edit');
        });

    // MASTER TILAWAH
        Route::group(['prefix' => 'Master/Tilawah', 'as' => 'master.tilawah.'], function() {
            Route::get('', [MasterTilawahController::class, 'index'])->name('list');
            Route::post('/add',[MasterTilawahController::class, 'store'])->name('add');
            Route::put('/edit',[MasterTilawahController::class, 'update'])->name('edit');
        });

    // MASTER DOA HARIAN
        Route::group(['prefix' => 'Master/Doaharian', 'as' => 'master.doaharian.'], function() {
            Route::get('', [MasterDoaharianController::class, 'index'])->name('list');
            Route::post('/add',[MasterDoaharianController::class, 'store'])->name('add');
            Route::put('/edit',[MasterDoaharianController::class, 'update'])->name('edit');
        });

    // MASTER HADIST
        Route::group(['prefix' => 'Master/Hadist', 'as' => 'master.hadist.'], function() {
            Route::get('', [MasterHadistController::class, 'index'])->name('list');
            Route::post('/add',[MasterHadistController::class, 'store'])->name('add');
            Route::put('/edit',[MasterHadistController::class, 'update'])->name('edit');
        });

    // MASTER CBI FONIK
        Route::group(['prefix' => 'Master/CBI', 'as' => 'master.cbi.'], function() {
            Route::get('', [MasterCBIController::class, 'index'])->name('list');
            Route::post('/add',[MasterCbiController::class, 'store'])->name('add');
            Route::put('/edit',[MasterCbiController::class, 'update'])->name('edit');
        });

    // DATA-------------------------------------------------------------------------------------------
        // MURID
            Route::group(['prefix' => 'Data/Murid', 'as' => 'data.datamurid.'], function() {
                Route::get('', [DataMuridController::class, 'index'])->name('list');
                Route::post('/add',[DataMuridController::class, 'store'])->name('add');
                Route::put('/edit{id}',[DataMuridController::class, 'update'])->name('edit');
                Route::get('/get_murid_tahun',[DataMuridController::class, 'get_murid_tahun'])->name('get_murid_tahun');
                Route::get('/data_siswa_awal',[DataMuridController::class, 'data_siswa_awal'])->name('data_siswa_awal');
                Route::get('/data_siswa_baru',[DataMuridController::class, 'data_siswa_baru'])->name('data_siswa_baru');
                Route::get('/filter_kelas_add',[DataMuridController::class, 'filter_kelas'])->name('filter_kelas_add');
            });

        // PENGAJAR
            Route::group(['prefix' => 'Data/Pengajar', 'as' => 'data.pengajar.'], function() {
                Route::get('', [DataPengajarController::class, 'index'])->name('list');
                Route::post('/add',[DataPengajarController::class, 'store'])->name('add');
                Route::put('/edit',[DataPengajarController::class, 'update'])->name('edit');
                Route::get('/data', [DataPengajarController::class, 'data'])->name('data');
                Route::get('/data_awal_pertahun', [DataPengajarController::class, 'data_awal_pertahun'])->name('data_awal_pertahun');
                Route::get('/filter_pengajar', [DataPengajarController::class, 'filter_pengajar'])->name('filter_pengajar');
                Route::get('/mapel_add', [DataPengajarController::class, 'mapel_add'])->name('mapel_add');
            });

        // WALIKELAS
            Route::group(['prefix' => 'Data/Walikelas', 'as' => 'data.walikelas.'], function() {
                Route::get('', [WalikelasController::class, 'index'])->name('list');
                Route::post('/add',[WalikelasController::class, 'store'])->name('add');
                Route::put('/edit',[WalikelasController::class, 'update'])->name('edit');
                Route::get('/data_awal',[WalikelasController::class, 'data_awal'])->name('data_awal');
                Route::get('/view_walikelas',[WalikelasController::class, 'view_walikelas'])->name('view_walikelas');
            });

        // INDICATORS
            Route::group(['prefix' => 'Data/Indicators', 'as' => 'data.indicators.'], function() {
                Route::get('', [DataIndicatorsController::class, 'index'])->name('list');
                Route::get('/data_awal',[DataIndicatorsController::class, 'data_awal'])->name('data_awal');
                Route::get('/data_ekstra',[DataIndicatorsController::class, 'data_ekstra'])->name('data_ekstra');
                Route::get('/data_doa_harian',[DataIndicatorsController::class, 'data_doa_harian'])->name('data_doa_harian');
                Route::get('/data_hadist',[DataIndicatorsController::class, 'data_hadist'])->name('data_hadist');
                Route::get('/data_tilawah',[DataIndicatorsController::class, 'data_tilawah'])->name('data_tilawah');
                Route::get('/data_tahfidz',[DataIndicatorsController::class, 'data_tahfidz'])->name('data_tahfidz');
                Route::get('/data_cbi',[DataIndicatorsController::class, 'data_cbi'])->name('data_cbi');
                Route::post('/add',[DataIndicatorsController::class, 'store'])->name('add');
                Route::get('/view_data', [DataIndicatorsController::class, 'view_data'])->name('view_data');
                Route::put('/edit',[DataIndicatorsController::class, 'update'])->name('edit');
            });

        // CP
            Route::group(['prefix' => 'Data/CP', 'as' => 'data.cp.'], function() {
                Route::get('', [DataCPController::class, 'index'])->name('list');
                Route::post('/add',[DataCPController::class, 'store'])->name('add');
                Route::put('/edit{id}',[DataCPController::class, 'update'])->name('edit');
            });

        // ELEMEN CP
            Route::group(['prefix' => 'Data/ElemenCP', 'as' => 'data.elemencp.'], function() {
                Route::get('', [DataElemenCPController::class, 'index'])->name('list');
                Route::post('/add',[DataElemenCPController::class, 'store'])->name('add');
                Route::put('/edit{id}',[DataElemenCPController::class, 'update'])->name('edit');
            });
        
        // TP
            Route::group(['prefix' => 'Data/TP', 'as' => 'data.tp.'], function() {
                Route::get('', [DataTPController::class, 'index'])->name('list');
                Route::post('/add',[DataTPController::class, 'store'])->name('add');
                Route::put('/edit{id}',[DataTPController::class, 'update'])->name('edit');
            });

        // TK
            Route::group(['prefix' => 'Data/TK', 'as' => 'data.tk.'], function() {
                Route::get('', [DataTKController::class, 'index'])->name('list');
                Route::post('/add',[DataTKController::class, 'store'])->name('add');
                Route::put('/edit{id}',[DataTKController::class, 'update'])->name('edit');
            });

        // CBI
            Route::group(['prefix' => 'Data/CBI', 'as' => 'data.cbi.'], function() {
                Route::get('', [DataCBIController::class, 'index'])->name('list');
                Route::post('/add',[DataCBIController::class, 'store'])->name('add');
                Route::put('/edit{id}',[DataCBIController::class, 'update'])->name('edit');
            });

    // NILAI-----------------------------------------------------------------------------------------------------------
        // NILAI AKADEMIK
            Route::group(['prefix' => 'Nilai/Akademik', 'as' => 'nilai.akademik.'], function() {
                Route::get('', [NilaiAkademikController::class, 'index'])->name('list');
                Route::get('/rekap{id_pengajar}', [NilaiAkademikController::class, 'rekap'])->name('rekap');
                Route::get('/input{id_pengajar}', [NilaiAkademikController::class, 'add_nilai'])->name('input');
                Route::post('/add',[NilaiAkademikController::class, 'store'])->name('add');
                Route::get('/data_awal',[NilaiAkademikController::class, 'data_awal'])->name('data_awal');
                Route::get('/edit_nilai',[NilaiAkademikController::class, 'edit_nilai'])->name('edit_nilai');
                Route::get('/delete{id_nilai}', [NilaiAkademikController::class, 'delete'])->name('delete ');
            });

        // NILAI EKSTRA
            Route::group(['prefix' => 'Nilai/Ekstra', 'as' => 'nilai.ekstra.'], function() {
                Route::get('', [NilaiEkstraController::class, 'index'])->name('list');
                Route::get('/input{id_pengajar}', [NilaiEkstraController::class, 'add_nilai'])->name('input');
                Route::post('/add',[NilaiEkstraController::class, 'store'])->name('add');
                Route::put('/edit',[NilaiEkstraController::class, 'update'])->name('edit');
                Route::get('/data_awal',[NilaiEkstraController::class, 'data_awal'])->name('data_awal');
                Route::get('/edit_nilai',[NilaiEkstraController::class, 'edit_nilai'])->name('edit_nilai');
                Route::get('/rekap{id_pengajar}', [NilaiEkstraController::class, 'rekap'])->name('rekap');
                Route::get('/delete{id_nilai}', [NilaiEkstraController::class, 'delete'])->name('delete ');
            });

        // NILAI IBADAH
            Route::group(['prefix' => 'Nilai/Ibadah', 'as' => 'nilai.ibadah.'], function() {
                Route::get('', [NilaiIbadahController::class, 'index'])->name('list');
                Route::get('/input{id_pengajar}', [NilaiIbadahController::class, 'add_nilai'])->name('input');
                Route::post('/add',[NilaiIbadahController::class, 'store'])->name('add');
                Route::get('/data_awal',[NilaiIbadahController::class, 'data_awal'])->name('data_awal');
                Route::get('/edit_nilai',[NilaiIbadahController::class, 'edit_nilai'])->name('edit_nilai');
                Route::get('/rekap{id_pengajar}', [NilaiIbadahController::class, 'rekap'])->name('rekap');
                Route::get('/delete{id_nilai}', [NilaiIbadahController::class, 'delete'])->name('delete ');
            });

        // NILAI HADIST
            Route::group(['prefix' => 'Nilai/Hadist', 'as' => 'nilai.hadist.'], function() {
                Route::get('', [NilaiHadistController::class, 'index'])->name('list');
                Route::get('/input{id_pengajar}', [NilaiHadistController::class, 'add_nilai'])->name('input');
                Route::post('/add',[NilaiHadistController::class, 'store'])->name('add');
                Route::get('/data_awal',[NilaiHadistController::class, 'data_awal'])->name('data_awal');
                Route::get('/edit_nilai',[NilaiHadistController::class, 'edit_nilai'])->name('edit_nilai');
                Route::get('/rekap{id_pengajar}', [NilaiHadistController::class, 'rekap'])->name('rekap');
                Route::get('/delete{id_nilai}', [NilaiHadistController::class, 'delete'])->name('delete ');
            });

        // NILAI DOA HARIAN
            Route::group(['prefix' => 'Nilai/Doa', 'as' => 'nilai.doa.'], function() {
                Route::get('', [NilaiDoaController::class, 'index'])->name('list');
                Route::get('/input{id_pengajar}', [NilaiDoaController::class, 'add_nilai'])->name('input');
                Route::post('/add',[NilaiDoaController::class, 'store'])->name('add');
                Route::get('/data_awal',[NilaiDoaController::class, 'data_awal'])->name('data_awal');
                Route::get('/edit_nilai',[NilaiDoaController::class, 'edit_nilai'])->name('edit_nilai');
                Route::get('/rekap{id_pengajar}', [NilaiDoaController::class, 'rekap'])->name('rekap');
                Route::get('/delete{id_nilai}', [NilaiDoaController::class, 'delete'])->name('delete ');
            });

        // NILAI CBI
            Route::group(['prefix' => 'Nilai/CBI', 'as' => 'nilai.cbi.'], function() {
                Route::get('', [NilaiCBIController::class, 'index'])->name('list');
                Route::get('/input{id_pengajar}', [NilaiCBIController::class, 'add_nilai'])->name('input');
                Route::post('/add',[NilaiCBIController::class, 'store'])->name('add');
                Route::get('/data_awal',[NilaiCBIController::class, 'data_awal'])->name('data_awal');
                Route::get('/edit_nilai',[NilaiCBIController::class, 'edit_nilai'])->name('edit_nilai');
                Route::get('/rekap{id_pengajar}', [NilaiCBIController::class, 'rekap'])->name('rekap');
                Route::get('/delete{id_nilai}', [NilaiCBIController::class, 'delete'])->name('delete ');
            });

        // NILAI TAHFIDZ
            Route::group(['prefix' => 'Nilai/Tahfidz', 'as' => 'nilai.tahfidz.'], function() {
                Route::get('', [NilaiTahfidzController::class, 'index'])->name('list');
                Route::get('/input{id_pengajar}', [NilaiTahfidzController::class, 'add_nilai'])->name('input');
                Route::post('/add',[NilaiTahfidzController::class, 'store'])->name('add');
                Route::get('/data_awal',[NilaiTahfidzController::class, 'data_awal'])->name('data_awal');
                Route::get('/edit_nilai',[NilaiTahfidzController::class, 'edit_nilai'])->name('edit_nilai');
                Route::get('/rekap{id_pengajar}', [NilaiTahfidzController::class, 'rekap'])->name('rekap');
                Route::get('/delete{id_nilai}', [NilaiTahfidzController::class, 'delete'])->name('delete ');
            });

        // NILAI TILAWAH
            Route::group(['prefix' => 'Nilai/Tilawah', 'as' => 'nilai.tilawah.'], function() {
                Route::get('', [NilaiTilawahController::class, 'index'])->name('list');
                Route::get('/input{id_pengajar}', [NilaiTilawahController::class, 'add_nilai'])->name('input');
                Route::post('/add',[NilaiTilawahController::class, 'store'])->name('add');
                Route::get('/data_awal',[NilaiTilawahController::class, 'data_awal'])->name('data_awal');
                Route::get('/edit_nilai',[NilaiTilawahController::class, 'edit_nilai'])->name('edit_nilai');
                Route::get('/rekap{id_pengajar}', [NilaiTilawahController::class, 'rekap'])->name('rekap');
            });

    // Raport-----------------------------------------------------------------------------------------------------------
            // Raport Ekstra
            Route::group(['prefix' => 'Raport/Ekstra', 'as' => 'raport.ekstra.'], function() {
                Route::get('', [RaportEkstraController::class, 'index'])->name('list');
                Route::get('/murid_kelas{id_pengajar}', [RaportEkstraController::class, 'view_murid'])->name('view_murid');
                Route::get('/raport{murid_id}', [RaportEkstraController::class, 'raport'])->name('print_raport');
            });

            // Raport Akademik
            Route::group(['prefix' => 'Raport/Akademik', 'as' => 'raport.akademik.'], function() {
                Route::get('', [RaportAkademikController::class, 'index'])->name('list');
                Route::get('/murid_kelas{id_pengajar}', [RaportAkademikController::class, 'view_murid'])->name('view_murid');
                Route::get('/raport{murid_id}', [RaportAkademikController::class, 'raport'])->name('print_raport');
            });

    // WALIKELAS-----------------------------------------------------------------------------------------------------------
        // ABSENSI
            Route::group(['prefix' => 'Walikelas/Absen', 'as' => 'walikelas.absen.'], function() {
                Route::get('', [AbsenController::class, 'index'])->name('list');
                Route::post('/add',[AbsenController::class, 'store'])->name('add');
                Route::get('/input_absen{id_walas}', [AbsenController::class, 'add_absen'])->name('input');
                Route::get('/edit_absen',[AbsenController::class, 'edit_absen'])->name('edit_absen');
            });

        // NARASI
            Route::group(['prefix' => 'Walikelas/Narasi', 'as' => 'walikelas.narasi.'], function() {
                Route::get('', [NarasiRaportController::class, 'index'])->name('list');
                Route::get('/list_siswa{id_walas}', [NarasiRaportController::class, 'list_siswa'])->name('list_siswa');
                Route::post('/add',[NarasiRaportController::class, 'store'])->name('add');
                Route::put('/add_foto',[NarasiRaportController::class, 'update_foto'])->name('add_foto');
                Route::get('/edit_narasi{id_murid}', [NarasiRaportController::class, 'edit_narasi'])->name('edit_narasi');
                Route::get('/update_narasi', [NarasiRaportController::class, 'update_narasi'])->name('update_narasi');
            });

        // PERKEMBANGAN
            Route::group(['prefix' => 'Walikelas/Perkembangan', 'as' => 'walikelas.perkembangan.'], function() {
                Route::get('', [PerkembanganController::class, 'index'])->name('list');
                Route::get('/list_siswa{id_walas}', [PerkembanganController::class, 'list_siswa'])->name('list_siswa');
                Route::get('/edit_nilai', [PerkembanganController::class, 'edit_nilai'])->name('edit_nilai');
                Route::post('/add',[PerkembanganController::class, 'store'])->name('add');
            });

        // STUDENT PROFILE
            Route::group(['prefix' => 'Walikelas/StudentProfile', 'as' => 'walikelas.studentprofile.'], function() {
                Route::get('', [StudentProfileController::class, 'index'])->name('list');
                Route::get('/add_nilai{id_pengajar}', [StudentProfileController::class, 'add_nilai'])->name('add_nilai');
                Route::get('/edit_nilai', [StudentProfileController::class, 'edit_nilai'])->name('edit_nilai');
                Route::post('/add',[StudentProfileController::class, 'store'])->name('add');
            });

        // SARAN UNTUK TEMA SELANJUTNYA
            Route::group(['prefix' => 'Walikelas/SaranTema', 'as' => 'walikelas.sarantema.'], function() {
                Route::get('', [SaranTemaController::class, 'index'])->name('list');
                Route::get('/input{id_pengajar}', [SaranTemaController::class, 'add_nilai'])->name('input');
                Route::post('/add',[SaranTemaController::class, 'store'])->name('add');
            });

        // PROYEK
            Route::group(['prefix' => 'Walikelas/Proyek', 'as' => 'walikelas.proyek.'], function() {
                Route::get('', [ProyekController::class, 'index'])->name('list');
            });

            // TEMA PROYEK
                Route::group(['prefix' => 'Walikelas/Proyek/TemaProyek', 'as' => 'walikelas.proyek.temaproyek.'], function() {
                    Route::get('', [TemaProyekController::class, 'index'])->name('list');
                    Route::post('/add',[TemaProyekController::class, 'store'])->name('add');
                });

            // NILAI PROYEK
                Route::group(['prefix' => 'Walikelas/Proyek/NilaiProyek', 'as' => 'walikelas.proyek.nilaiproyek.'], function() {
                    Route::get('', [NilaiProyekController::class, 'index'])->name('list');
                    Route::get('/tema_proyek_kelas', [NilaiProyekController::class, 'tema_proyek_kelas'])->name('tema_proyek_kelas');
                    Route::get('/data_murid_kelas', [NilaiProyekController::class, 'data_murid_kelas'])->name('data_murid_kelas');
                    Route::get('/edit_nilai', [NilaiProyekController::class, 'edit_nilai'])->name('edit_nilai');
                    Route::post('/add',[NilaiProyekController::class, 'store'])->name('add');
                });
