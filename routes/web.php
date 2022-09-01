<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StaterkitController;
use App\Http\Controllers\LanguageController;
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
use App\Http\Controllers\Master\MasterPerkembanganController;
use App\Http\Controllers\Master\MasterSemesterController;
use App\Http\Controllers\Master\MasterSiswaController;
use App\Http\Controllers\Master\MasterSkillValueController;
use App\Http\Controllers\Master\MasterTKController;
use App\Http\Controllers\Master\MasterTPController;

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

    // MASTER SEMESTER
    Route::group(['prefix' => 'Master/Semester', 'as' => 'master.semester.'], function() {
      Route::get('', [MasterSemesterController::class, 'index'])->name('list');
      Route::post('/add',[MasterSemesterController::class, 'store'])->name('add');
      Route::put('/edit{id}',[MasterSemesterController::class, 'update'])->name('edit');
  });

    // MASTER AREA DEVELOPMENT
    Route::group(['prefix' => 'Master/Areas Dev', 'as' => 'master.area.'], function() {
      Route::get('', [MasterAreaController::class, 'index'])->name('list');
      Route::post('/add',[MasterAreaController::class, 'store'])->name('add');
      Route::put('/edit{id}',[MasterAreaController::class, 'update'])->name('edit');
  });

    // MASTER Development Achievment
    Route::group(['prefix' => 'Master/Dev Achiev', 'as' => 'master.devac.'], function() {
      Route::get('', [MasterDevacController::class, 'index'])->name('list');
      Route::post('/add',[MasterDevacController::class, 'store'])->name('add');
      Route::put('/edit{id}',[MasterDevacController::class, 'update'])->name('edit');
  });

    // MASTER Indikator
    Route::group(['prefix' => 'Master/Indikator', 'as' => 'master.indikator.'], function() {
      Route::get('', [MasterIndikatorController::class, 'index'])->name('list');
      Route::post('/add',[MasterIndikatorController::class, 'store'])->name('add');
      Route::put('/edit{id}',[MasterIndikatorController::class, 'update'])->name('edit');
  });

