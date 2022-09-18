@extends('layouts/contentLayoutMaster')

@section('vendor-style')
    {{-- vendor css files TABLE--}}
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/dataTables.bootstrap5.min.css')) }}">
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/responsive.bootstrap5.min.css')) }}">
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/buttons.bootstrap5.min.css')) }}">
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/rowGroup.bootstrap5.min.css')) }}">
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/pickers/flatpickr/flatpickr.min.css')) }}">
    {{-- Vendor Css files INPUT --}}
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/forms/select/select2.min.css')) }}">
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/pickers/flatpickr/flatpickr.min.css')) }}">

    <link rel="stylesheet" href="{{ asset(mix('vendors/css/extensions/toastr.min.css')) }}">
@endsection

@section('page-style')
    {{-- Page Css files --}}
        <link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/form-validation.css')) }}">
        <link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/pickers/form-flat-pickr.css')) }}">

    <link rel="stylesheet" href="{{ asset(mix('css/base/plugins/extensions/ext-component-toastr.css')) }}">
@endsection

@section('title', 'Data Akun')

@section('content')
<!-- Complex Headers -->
<section id="complex-header-datatable">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header border-bottom p-1">
                    <div class="head-label">
                        <button class="btn btn-outline-success round waves-effect btn-sm" type="button" data-bs-toggle="modal" data-bs-target="#inlineForm">
                            <span>
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus me-50 font-small-4">
                                    <line x1="12" y1="5" x2="12" y2="19"></line>
                                    <line x1="5" y1="12" x2="19" y2="12"></line>
                                </svg>
                                Akun
                            </span>
                        </button>
                    </div>
                    <div class="dt-action-buttons text-end">
                        <div class="dt-buttons d-inline-flex">
                            <div class="btn-group">
                                <button type="button" class="btn btn-outline-success btn-sm dropdown-toggle waves-effect" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i data-feather='settings'></i>
                                </button>
                                <div class="dropdown-menu" style="">
                                    <a data-bs-toggle="modal" data-bs-target="#inlineForm" class="dropdown-item" href="#">
                                        Import
                                    </a>
                                    <a data-bs-toggle="modal" data-bs-target="#inlineForm" class="dropdown-item" href="#">
                                        Export
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @include('content.Master.Akun.add_akun')
                <div class="card-datatable">
                    <table id="example" class="dt-multilingual table">
                        <thead>
                            <tr>
                                <th>NI</th>
                                <th>Nama</th>
                                <th>Status</th>
                                <th>Option</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($user as $u)
                                <tr>
                                    <td>{{$u->ni}}</td>
                                    <td>{{$u->nama}}</td>
                                    <td>{{$u->status}}</td>
                                    <td>
                                        <button type="button" class="btn btn-icon btn-success" onclick="modal_edit({{$u}})">
                                            <i data-feather="edit"></i>
                                        </button>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                @include('content.Master.Akun.edit_akun')
            </div>
        </div>
    </div>
</section>
<!--/ Complex Headers -->
@endsection

@section('vendor-script')
    {{-- vendor files TABLE--}}
        <script src="{{ asset(mix('vendors/js/tables/datatable/jquery.dataTables.min.js')) }}"></script>
        <script src="{{ asset(mix('vendors/js/tables/datatable/dataTables.bootstrap5.min.js')) }}"></script>
        <script src="{{ asset(mix('vendors/js/tables/datatable/dataTables.responsive.min.js')) }}"></script>
        <script src="{{ asset(mix('vendors/js/tables/datatable/responsive.bootstrap5.min.js')) }}"></script>
        <script src="{{ asset(mix('vendors/js/tables/datatable/datatables.checkboxes.min.js')) }}"></script>
        <script src="{{ asset(mix('vendors/js/tables/datatable/datatables.buttons.min.js')) }}"></script>
        <script src="{{ asset(mix('vendors/js/tables/datatable/jszip.min.js')) }}"></script>
        <script src="{{ asset(mix('vendors/js/tables/datatable/pdfmake.min.js')) }}"></script>
        <script src="{{ asset(mix('vendors/js/tables/datatable/vfs_fonts.js')) }}"></script>
        <script src="{{ asset(mix('vendors/js/tables/datatable/buttons.html5.min.js')) }}"></script>
        <script src="{{ asset(mix('vendors/js/tables/datatable/buttons.print.min.js')) }}"></script>
        <script src="{{ asset(mix('vendors/js/tables/datatable/dataTables.rowGroup.min.js')) }}"></script>
        <script src="{{ asset(mix('vendors/js/pickers/flatpickr/flatpickr.min.js')) }}"></script>

    <!-- vendor files INPUT-->
        <script src="{{ asset(mix('vendors/js/forms/select/select2.full.min.js')) }}"></script>
        <script src="{{ asset(mix('vendors/js/forms/validation/jquery.validate.min.js')) }}"></script>
        <script src="{{ asset(mix('vendors/js/pickers/flatpickr/flatpickr.min.js')) }}"></script>

    <script src="{{ asset(mix('vendors/js/extensions/toastr.min.js')) }}"></script>

@endsection

@section('page-script')

  <!-- Page js files -->
  <script src="{{ asset(mix('js/scripts/forms/form-select2.js')) }}"></script>
<script>

    $(document).ready(function() {

        $(".basic-select2").select2();
        $('#example').DataTable();

        @if ($message = Session::get('succes'))

            toastr['success'](
                '{!! $message !!}',
                'Sukses',
                { showDuration: 500 }
            );
        @endif
    } );

        $('#level').change(function () {
            var nomor_induk = document.getElementById("nomor_induk").value;
            var level = document.getElementById("level").value;

            console.log (level);
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

            if (level=="Walikelas") {
                $.ajax({
                    method: 'GET',
                    url: "/Auth/register/datawalikelas",
                    dataType: 'JSON',
                    success: function(data){
                        const items = data.map((items) => ({ id: items.id, nama: items.nama, ni: items.nip }))

                        $('#nomor_induk').append($('<option>', {
                            value: "Pilih Wali Kelas",
                            text : "Pilih Wali Kelas",
                            selected: true,
                            disabled: true
                        }));

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
            if (level=="Guru") {
                $.ajax({
                    method: 'GET',
                    url: "/Auth/register/dataguru",
                    dataType: 'JSON',
                    success: function(data){
                        const items = data.map((items) => ({ id: items.id, nama: items.nama_guru, ni: items.nomor_induk }))

                        $('#nomor_induk').append($('<option>', {
                            value: "Pilih Guru",
                            text : "Pilih Guru",
                            selected: true,
                            disabled: true
                        }));

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

            // if (level=="Guru Ekstra") {
            //     $.ajax({
            //         method: 'GET',
            //         url: "/Auth/register/dataguruekstra",
            //         dataType: 'JSON',
            //         success: function(data){
            //             const items = data.map((items) => ({ id: items.id, nama: items.nama }))

            //             $('#nomor_induk').append($('<option>', {
            //                 value: "Pilih Guru Ekstra",
            //                 text : "Pilih Guru Ekstra",
            //                 selected: true,
            //                 disabled: true
            //             }));

            //             $.each(items, function (i, item) {
            //                 $('#nomor_induk').append($('<option>', {
            //                     value: item.id,
            //                     text : item.nama
            //                 }));
            //             });
            //         },
            //         error: err => console.log(err)
            //     });
            // }
        }

    $('#jquery-val-form').validate({
        rules: {
            ekstra: {
            required: true,
            }
        },
        messages: {
            ekstra:{
            required: "Isi Kolom Nama Ekstra",
            }
        }
    });

    function modal_edit(u) {
        $("#id").val(u.id);
        $("#edit_level").val(u.level);
        $("#edit_nomor_induk").val(u.ni);
        $("#edit_nama").val(u.nama);
        $("#status").val(u.status).change();
        $('#edit').modal('show');
    }
</script>
@endsection
