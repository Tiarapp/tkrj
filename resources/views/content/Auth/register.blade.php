@php
$configData = Helper::applClasses();
@endphp
@extends('layouts/fullLayoutMaster')

@section('title', 'Register Page')

@section('vendor-style')
    {{-- Vendor Css files INPUT --}}
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/forms/select/select2.min.css')) }}">
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/pickers/flatpickr/flatpickr.min.css')) }}">

@endsection

@section('page-style')
    {{-- Page Css files --}}
    <link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/form-validation.css')) }}">
    <link rel="stylesheet" href="{{ asset(mix('css/base/pages/authentication.css')) }}">
@endsection

@section('content')
    <div class="auth-wrapper auth-cover">
        <div class="auth-inner row m-0">

            <!-- Left Text-->
            <div class="d-none d-lg-flex col-lg-8 align-items-center p-5">
                <div class="w-100 d-lg-flex align-items-center justify-content-center px-5">
                    @if ($configData['theme'] === 'dark')
                        <img src="{{ asset('gambar/bg.jpeg') }}" alt="Login V2" />
                    @else
                        <img style="width: 830px" src="{{ asset('gambar/bg.jpeg') }}" alt="Login V2" />
                    @endif
                </div>
            </div>
            <!-- /Left Text-->

            <!-- Login-->
            <div class="d-flex col-lg-4 align-items-center auth-bg px-2 p-lg-5">
                <div class="col-12 col-sm-8 col-md-6 col-lg-12 px-xl-2 mx-auto">
                    <img class="card-title fw-bold mb-1" style="width: 350px; margin-left: -25px" src="{{ asset('gambar/logo_font.png') }}" alt="">
                    <form class="auth-login-form mt-2" action="/" method="GET">
                        <div class="mb-1">
                            <label class="form-label" for="login-email">Pendaftaran</label>
                            <select class="basic-select2" name="level" id="level" required>
                                <option value="" selected disabled>Pilih Jawaban</option>
                                <option value="Siswa">Siswa</option>
                                <option value="Wali Murid">Wali Murid</option>
                                <option value="Guru Mapel">Guru Mapel</option>
                                <option value="Guru Ekstra">Guru Ekstra</option>
                                <option value="Guru Tahfidz">Guru Tahfidz</option>
                                <option value="Guru Al-Qur'an">Guru Al-Qur'an</option>
                                <option value="Walas&Guru">Walas & Guru</option>
                                <option value="Koordinator">Koordinator</option>
                            </select>
                        </div>
                        <div class="mb-1">
                            <label class="form-label" for="login-email">Nomor Induk</label>
                            <select class="basic-select2" name="nomor_induk" id="nomor_induk" required>

                            </select>
                        </div>
                        <div class="mb-1">
                            <div class="d-flex justify-content-between">
                                <label class="form-label" for="login-password">Password</label>
                            </div>
                            <div class="input-group input-group-merge form-password-toggle">
                                <input class="form-control form-control-merge" id="login-password" type="password" name="login-password" placeholder="············" aria-describedby="login-password" tabindex="2" />
                                <span class="input-group-text cursor-pointer"><i data-feather="eye"></i></span>
                            </div>
                        </div>
                        <div class="mb-1">
                            {{-- <div class="form-check">
                                <input class="form-check-input" id="remember-me" type="checkbox" tabindex="3" />
                                <label class="form-check-label" for="remember-me"> Remember Me</label>
                            </div> --}}
                        </div>
                        <button class="btn btn-primary w-100" tabindex="4">Sign in</button>
                    </form>
                </div>
            </div>
            <!-- /Login-->
        </div>
    </div>
@endsection

@section('vendor-script')
    <script src="{{ asset(mix('vendors/js/forms/validation/jquery.validate.min.js')) }}"></script>

    <!-- vendor files INPUT-->
        <script src="{{ asset(mix('vendors/js/forms/select/select2.full.min.js')) }}"></script>
        <script src="{{ asset(mix('vendors/js/forms/validation/jquery.validate.min.js')) }}"></script>
        <script src="{{ asset(mix('vendors/js/pickers/flatpickr/flatpickr.min.js')) }}"></script>
@endsection

@section('page-script')
    <script src="{{ asset(mix('js/scripts/pages/auth-login.js')) }}"></script>

    <script>

        $(document).ready(function() {

            $(".basic-select2").select2();

            @if ($message = Session::get('succes'))

                toastr['success'](
                    '{!! $message !!}',
                    'Sukses',
                    { showDuration: 500 }
                );
            @endif
        } );

        $('#level').change(function () {
            var nomor_induk = document.getElementById("nomor_induk").value
            var level = document.getElementById("level").value

            if (level == '' || level == null){
                return;
            }

            set_select_extra(level)
        });

        const set_select_extra = function(level){
            // console.log('selec ekstra' + id)
            $('#nomor_induk option').each(function() {
                if ( $(this).val() !== '-' ) {
                    $(this).remove();
                }
            });

            if (level=="Siswa") {
                $.ajax({
                    method: 'GET',
                    url: "/Auth/register/datasiswa",
                    dataType: 'JSON',
                    success: function(data){
                        const items = data.map((items) => ({ id: items.id, nama: items.nama, ni: items.nis }))

                        $.each(items, function (i, item) {
                            $('#nomor_induk').append($('<option>', {
                                value: item.id,
                                text : item.ni +" || "+ item.nama
                            }));
                        });
                    },
                    error: err => console.log(err)
                });
            }
            if (level=="Guru Mapel") {
                $.ajax({
                    method: 'GET',
                    url: "/Auth/register/datagurumapel",
                    dataType: 'JSON',
                    success: function(data){
                        const items = data.map((items) => ({ id: items.id, nama: items.nama, ni: items.NIP }))

                        $.each(items, function (i, item) {
                            $('#nomor_induk').append($('<option>', {
                                value: item.id,
                                text : item.ni +" || "+ item.nama
                            }));
                        });
                    },
                    error: err => console.log(err)
                });
            }

            if (level=="Walas&Guru") {
                $.ajax({
                    method: 'GET',
                    url: "/Auth/register/datawalikelas",
                    dataType: 'JSON',
                    success: function(data){
                        const items = data.map((items) => ({ id: items.id, nama: items.nama, kelas: items.kelas, guru_id: item.guru_id }))

                        $.each(items, function (i, item) {
                            $('#nomor_induk').append($('<option>', {
                                value: item.guru_id,
                                text : item.kelas +" || "+ item.nama
                            }));
                        });
                    },
                    error: err => console.log(err)
                });
            }
        }

    </script>
@endsection
