<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Hash;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends AuthController
{
    public function login_pegawai()
    {
        return view('content.Auth.login_pegawai',);
    }

    public function authenticate_pegawai(Request $request)
    {

        // cek form validation
            $this->validate($request, [
                'ni'        => 'required',
                'password'  => 'required'
            ]);

        // cek apakah nomor induk, level, password
            // $credential = ['ni' => $request->ni, 'password' => Hash::make($request->password)];
            $credential = ['ni' => $request->ni, 'password' => $request->password];

            // dd($credential);
            if (Auth::attempt($credential)) {
            // if (Auth::attempt(request(['ni', 'password']))) {
            // if (Auth::attempt(['ni' => $request->ni, 'level' => $request->level, 'password' => 12345678])) {
                // return "Berhasil Login";
                return redirect()->route('home');
            }

        // jika salah, kembali ke halaman login
            return redirect()->back()->with('error', 'Nomor Induk atau Password salah');
    }

    public function logout()
    {
        Session::flush();
        Auth::logout();

        return redirect('login_pegawai');
    }
}
