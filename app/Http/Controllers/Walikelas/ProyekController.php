<?php

namespace App\Http\Controllers\Walikelas;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ProyekController extends WalasController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Proyek (P5)"]];

        $periode=$this->periode->getPeriodeAktif();

        // DETAIL WALIKELAS
            $walikelas=$this->detail_walikelas(Auth::user()->data_id);

        return view('content.Walikelas.Proyek.proyek', ['breadcrumbs' => $breadcrumbs, 'walikelas'=>$walikelas]);
    }
}
