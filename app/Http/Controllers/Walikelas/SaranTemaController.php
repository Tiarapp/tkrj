<?php

namespace App\Http\Controllers\Walikelas;

use App\Http\Controllers\Data\WalikelasController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SaranTemaController extends WalasController
{
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Saran Tema Selanjutnya"]];

        $periode=$this->periode->getPeriodeAktif();

        // DETAIL WALIKELAS
            $walikelas=$this->detail_walikelas(Auth::user()->data_id);

        return view('content.Walikelas.SaranTema.sarantema', ['breadcrumbs' => $breadcrumbs, 'walikelas'=>$walikelas]);
    }

    public function add_nilai($id_walas)
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Input Saran Tema"]];

        $periode=$this->periode->getPeriodeAktif();

        $walikelas=$this->walikelas($id_walas);

        return view('content.Walikelas.SaranTema.add_sarantema', ['breadcrumbs' => $breadcrumbs, 'walikelas' => $walikelas]);
    }
}
