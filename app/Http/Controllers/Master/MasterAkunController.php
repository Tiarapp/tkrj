<?php

namespace App\Http\Controllers\Master;

use App\Models\Master\MasterAkun;
use App\Models\Master\MasterGuru;
use App\Models\Master\MasterSiswa;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class MasterAkunController extends MasterController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Akun"]];
        $user=User::all();
        $master_level=MasterAkun::all();
        return view('content.Master.Akun.data_akun', ['breadcrumbs' => $breadcrumbs, 'user' => $user, 'master_level' => $master_level]);
    }

    public function store(Request $request)
    {
        if ($request->level=="Walikelas") {

            $data=MasterSiswa::where('id', $request->nomor_induk)
                                ->select('id', 'nis as ni', 'nama')
                                ->first();
                                
        }elseif($request->level=="Guru") {

            $data=MasterGuru::where('id', $request->nomor_induk)
                            ->select('id', 'nomor_induk as ni', 'nama_guru as nama')
                            ->first();
        }

        // return $request->all();
        User::create([
            'ni'        => $data->ni,
            'nama'      => $data->nama,
            'password'  => Hash::make($request->password),
            'level'     => $request->level,
            'data_id'   => $data->id,
        ]);

        return redirect()->route('master.akun.list')->with('succes','Data Berhasil di Simpan');
    }

    public function update(Request $request)
    {
        $akun=User::find($request->id);
        $akun->status  = $request->status;
        $akun->save();

        return redirect()->route('master.akun.list')->with('succes','Data Berhasil di Ubah');
    }
}
