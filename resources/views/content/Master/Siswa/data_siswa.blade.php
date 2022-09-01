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

<link rel="stylesheet" href="{{ asset(mix('css/base/plugins/extensions/ext-component-toastr.css')) }}">

@endsection

@section('title', 'Data Siswa')

@section('content')
{{-- @if ($message = Session::get('success'))
    <div class="demo-spacing-0">
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <h4 class="alert-heading">Success</h4>
            <div class="alert-body">
                {{ $message }}
            </div>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </div>
@endif --}}
<!-- Complex Headers -->
<section id="complex-header-datatable">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header border-bottom p-1">
                    <div class="head-label">
                        <button class="btn btn-outline-success round waves-effect btn-sm" type="button" data-bs-toggle="modal" data-bs-target="#xlarge">
                            <span>
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus me-50 font-small-4">
                                    <line x1="12" y1="5" x2="12" y2="19"></line>
                                    <line x1="5" y1="12" x2="19" y2="12"></line>
                                </svg>
                                Siswa
                            </span>
                        </button>
                    </div>
                    <div class="dt-action-buttons text-end">
                        <div class="dt-buttons d-inline-flex">
                            <select class="select2-size-sm form-select" id="tahunajaran_id" name="tahunajaran_id">
                                <option selected disabled>Pilih Tahun Ajaran</option>
                                @foreach ($tahunajaran_raport as $tr)
                                        <option value="{{$tr->id}}">{{$tr->tahun_ajaran}}</option>
                                    @endforeach
                            </select>
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

                @include('content.Master.Siswa.add_siswa')
                <div class="card-datatable">
                    <table id="example" class="dt-multilingual table">
                        <thead>
                            <tr>
                                <th>NIS</th>
                                <th>NIK</th>
                                <th>Nama</th>
                                <th>Tahun Masuk</th>
                                <th>Tahun Keluar</th>
                                <th>Status</th>
                                <th>Detail</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
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
{{-- Page js files TABLE--}}
{{-- <script src="{{ asset(mix('js/scripts/tables/table-datatables-basic.js')) }}"></script> --}}

<!-- Page js files INPUT-->
{{-- <script src="{{ asset(mix('js/scripts/forms/form-validation.js')) }}"></script> --}}

  <!-- Page js files -->
  <script src="{{ asset(mix('js/scripts/forms/form-select2.js')) }}"></script>

<script>

    $(document).ready(function() {
        tabledatasiswa()
        $(".basic-select2").select2();


        @if ($message = Session::get('success'))

            toastr['success'](
                '{!! $message !!}',
                'Sukses',
                { showDuration: 500 });

        @elseif (count($errors) > 0)
            @foreach ($errors->all() as $error)
                toastr['error'](
                    '{!! $error !!}', 'Error!', {
                        closeButton: true,
                        tapToDismiss: false,
                });
            @endforeach
        @endif

    });

    $('#jquery-val-form').validate({

        rules: {
            thn_ajaran_masuk: {
            required: true,
            }
        },
        messages: {
            thn_ajaran_masuk:{
            required: "Pilih Tahun Ajaran di Halaman Utama",
            }
        }
    });

    // TABLE DATA SISWA
        var tabledatasiswa = function(tahun_ajaran){
            /**
             * [{"id":1,"tahunajaran_id":1,
             * "tahunajaran":"2021\/2022",
             * "pendaftaran_id":"163",
             * "pendaftaran":"Reguler",
             * "nik":"3515140510090001",
             * "nis":"",
             * "nama":"Muhammad Naufal Saputra",
             * "tahun_keluar":null,
             * "status":"Aktif",
             * "created_at":null,
             * "updated_at":null}]
             */
            if (!!tahun_ajaran) {

                $('#example').DataTable({
                    bDestroy: true,
                    ajax: "/Master/Siswa/get_siswa?tahunajaran=" +tahun_ajaran,
                    columns: [
                        { data: 'nis'},
                        { data: 'nik'},
                        { data: 'nama'},
                        { data: 'tahunajaran'},
                        { data: 'tahun_keluar'},
                        { data: 'status'},
                    ]
                })
            } else {
                $('#example').DataTable({
                    bDestroy: true
                });
            }
        }
    // FILTER TAHUN AJARAN SISWA
        $('#tahunajaran_id').change(function () {
                var tahunajaran = document.getElementById("tahunajaran_id").value;

                if (!!tahunajaran) {
                    document.getElementById("thn_ajaran_masuk").value=tahunajaran;
                    tabledatasiswa(tahunajaran)
                } else {
                    $('#example').DataTable({
                        bDestroy: true
                    });
                }
        });

    // FILTER TAHUN AJARAN PPDB
        $('#thn_ppdb').change(function () {
            var tahunajaran_ppdb = document.getElementById("thn_ppdb").value;

            console.log(!!tahunajaran_ppdb);

            if (!!tahunajaran_ppdb) {
                $('#table_siswa_ppdb').DataTable({
                    bDestroy: true,
                    ajax: "/Master/Siswa/get_siswa_ppdb?tahunajaran_ppdb=" +tahunajaran_ppdb,
                    columns: [
                        {data: null,
                            render: function(data, type, row) {
                            // MEMUNCULKAN DATA YG DI PERLUKAN UNTUK SAVE DI TABEL SISWA

                            const pendaftaran_id = data.pendaftaran_id ?? '' // jika data kosong diganti string ''
                            const pendaftaran = data.pendafataran ?? ''
                            const nik = data.nik ?? ''
                            const nama = data.nm_lengkap ?? ''

                            return '<input type="hidden" class="form-control" name="pendaftaran_id[]" id="pendaftaran_id" value="'+pendaftaran_id+'"><input type="hidden" class="form-control" name="pendaftaran[]" id="pendaftaran" value="'+pendaftaran+'"><input type="hidden" class="form-control" name="nik[]" id="nik" value="'+nik+'"><input type="text" class="form-control" name="nis[]" id="nis" value=""><input type="hidden" class="form-control" name="nama[]" id="nama" value="'+nama+'">';
                        }},
                        { data: 'nik'},
                        { data: 'nm_lengkap'},
                    ]
                });
            } else {
                $('#table_siswa_ppdb').DataTable({
                    bDestroy: true
                });
            }
        });
</script>
@endsection
