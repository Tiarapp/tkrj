<?php

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

// DATA
    use App\Http\Controllers\Data\DataMuridController;
    use App\Http\Controllers\Data\DataPengajarController;
    use App\Http\Controllers\Data\WalikelasController;
    use App\Http\Controllers\Data\DataIndicatorsController;
use App\Http\Controllers\Nilai\NilaiEkstraController;
use App\Http\Controllers\Nilai\NilaiIbadahController;

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

Route::get('/', [StaterkitController::class, 'home'])->name('home');
Route::get('home', [StaterkitController::class, 'home'])->name('home');
// Route Components
Route::get('layouts/collapsed-menu', [StaterkitController::class, 'collapsed_menu'])->name('collapsed-menu');
Route::get('layouts/full', [StaterkitController::class, 'layout_full'])->name('layout-full');
Route::get('layouts/without-menu', [StaterkitController::class, 'without_menu'])->name('without-menu');
Route::get('layouts/empty', [StaterkitController::class, 'layout_empty'])->name('layout-empty');
Route::get('layouts/blank', [StaterkitController::class, 'layout_blank'])->name('layout-blank');


// locale Route
Route::get('lang/{locale}', [LanguageController::class, 'swap']);

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

    // NILAI-----------------------------------------------------------------------------------------------------------

        // NILAI EKSTRA
            Route::group(['prefix' => 'Nilai/Ekstra', 'as' => 'nilai.ekstra.'], function() {
                Route::get('', [NilaiEkstraController::class, 'index'])->name('list');
                Route::get('/input{id_pengajar}', [NilaiEkstraController::class, 'add_nilai'])->name('input');
                Route::post('/add',[NilaiEkstraController::class, 'store'])->name('add');
                Route::put('/edit',[NilaiEkstraController::class, 'update'])->name('edit');
                Route::get('/data_awal',[NilaiEkstraController::class, 'data_awal'])->name('data_awal');
                Route::get('/edit_nilai',[NilaiEkstraController::class, 'edit_nilai'])->name('edit_nilai');
                // Route::get('/view_walikelas',[NilaiEkstraController::class, 'view_walikelas'])->name('view_walikelas');
            });

        // NILAI CBI
            Route::group(['prefix' => 'Nilai/Ekstra', 'as' => 'nilai.ekstra.'], function() {
                Route::get('', [NilaiEkstraController::class, 'index'])->name('list');
                Route::get('/input{id_pengajar}', [NilaiEkstraController::class, 'add_nilai'])->name('input');
                Route::post('/add',[NilaiEkstraController::class, 'store'])->name('add');
                Route::get('/data_awal',[NilaiEkstraController::class, 'data_awal'])->name('data_awal');
                Route::get('/edit_nilai',[NilaiEkstraController::class, 'edit_nilai'])->name('edit_nilai');
            });

        // NILAI IBADAH
            Route::group(['prefix' => 'Nilai/Ibadah', 'as' => 'nilai.ibadah.'], function() {
                Route::get('', [NilaiIbadahController::class, 'index'])->name('list');
                Route::get('/input{id_pengajar}', [NilaiIbadahController::class, 'add_nilai'])->name('input');
                Route::post('/add',[NilaiIbadahController::class, 'store'])->name('add');
                Route::get('/data_awal',[NilaiIbadahController::class, 'data_awal'])->name('data_awal');
                Route::get('/edit_nilai',[NilaiIbadahController::class, 'edit_nilai'])->name('edit_nilai');
            });
