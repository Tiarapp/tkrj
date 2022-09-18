@php
$configData = Helper::applClasses();
@endphp
@extends('layouts/fullLayoutMaster')

@section('title', 'Login Pegawai')

@section('vendor-style')
    {{-- Vendor Css files INPUT --}}
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/forms/select/select2.min.css')) }}">
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/pickers/flatpickr/flatpickr.min.css')) }}">

    <link rel="stylesheet" href="{{ asset(mix('vendors/css/extensions/toastr.min.css')) }}">
@endsection

@section('page-style')
    {{-- Page Css files --}}
    <link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/form-validation.css')) }}">
    <link rel="stylesheet" href="{{ asset(mix('css/base/pages/authentication.css')) }}">

    {{-- Page Css files --}}
    <link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/pickers/form-flat-pickr.css')) }}">

<link rel="stylesheet" href="{{ asset(mix('css/base/plugins/extensions/ext-component-toastr.css')) }}">
@endsection

@section('content')
    <div class="auth-wrapper auth-cover">
        <div class="auth-inner row m-0">

            <!-- Left Text-->
                <div class="d-none d-lg-flex col-lg-8 align-items-center p-5">
                    <div class="w-100 d-lg-flex align-items-center justify-content-center px-5">
                        @if ($configData['theme'] === 'dark')
                            <img src="{{ asset('gambar/bg.jpeg') }}" />
                        @else
                            <img style="width: 830px" src="{{ asset('gambar/bg.jpeg') }}" />
                        @endif
                    </div>
                </div>
            <!-- /Left Text-->

            <!-- Login-->
                <div class="d-flex col-lg-4 align-items-center auth-bg px-2 p-lg-5">
                    <div class="col-12 col-sm-8 col-md-6 col-lg-12 px-xl-2 mx-auto">
                        <img class="card-title fw-bold mb-1" style="width: 350px; margin-left: -30px" src="{{ asset('gambar/logo_font.png') }}" alt="">
                        <form class="auth-login-form mt-2" action="{{route('auth.authenticate_pegawai')}}" method="POST">
                            {{csrf_field()}}
                            <div class="mb-1">
                                <label class="form-label" for="login-email">Nomor Induk</label>
                                <input class="form-control" id="ni" type="text" name="ni" placeholder="Nomor Induk" aria-describedby="login-email" autofocus="" tabindex="1" />
                            </div>
                            <div class="mb-1">
                                <div class="d-flex justify-content-between">
                                    <label class="form-label" for="login-password">Password</label>
                                </div>
                                <div class="input-group input-group-merge form-password-toggle">
                                    <input class="form-control form-control-merge" id="password" type="password" name="password" placeholder="···············" aria-describedby="login-password" tabindex="2" />
                                    <span class="input-group-text cursor-pointer"><i data-feather="eye"></i></span>
                                </div>
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

<script src="{{ asset(mix('vendors/js/extensions/toastr.min.js')) }}"></script>
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
            @elseif (count($errors) > 0)
                @foreach ($errors->all() as $error)
                    toastr['error'](
                        '{!! $error !!}', 'Error!', {
                            closeButton: true,
                            tapToDismiss: false,
                    });
                @endforeach
            @endif
        } );
    </script>
@endsection
