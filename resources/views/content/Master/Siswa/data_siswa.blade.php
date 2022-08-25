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
@endsection

@section('page-style')
{{-- Page Css files --}}
<link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/form-validation.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/pickers/form-flat-pickr.css')) }}">
@endsection

@section('title', 'Data Siswa')

@section('content')
@if ($message = Session::get('succes'))
    <div class="demo-spacing-0">
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <h4 class="alert-heading">Success</h4>
            <div class="alert-body">
                {{ $message }}
            </div>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </div>
@endif
@if ($message = Session::get('error'))
<div class="demo-spacing-0">
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        <h4 class="alert-heading">Error</h4>
        <div class="alert-body">
            {{ $message }}
        </div>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
</div>
@endif
<!-- Complex Headers -->
<section id="complex-header-datatable">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <div class="btn-group">
                        <button type="button" class="btn btn-outline-success btn-sm dropdown-toggle waves-effect" data-bs-toggle="dropdown" aria-expanded="false">
                            OPTION
                        </button>
                        <div class="dropdown-menu" style="">
                            {{-- <h6 class="dropdown-header">Header</h6> --}}
                            <a data-bs-toggle="modal" data-bs-target="#inlineForm" class="dropdown-item" href="#">
                            {{-- <a class="dropdown-item" href="{{route('master.ekstra.tambah')}}"> --}}
                                Tambah
                            </a>
                            {{-- <a class="dropdown-item" href="#">Option 3</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Separated link</a> --}}
                        </div>
                    </div>
                </div>
                @include('content.Master.Siswa.add_siswa')
                <div class="card-datatable">
                    <table id="example" class="dt-complex-header table table-bordered table-responsive">
                        <thead>
                            <tr>
                                <th>NIS</th>
                                <th>NIK</th>
                                <th>Nama Siswa</th>
                                <th>Tahub Masuk</th>
                                <th>Tahun Keluar</th>
                                <th>Status</th>
                                <th>Option</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($siswa as $siswa)
                                <tr>
                                    <td>{{ $siswa->nis }}</td>
                                    <td>{{ $siswa->nik }}</td>
                                    <td>{{ $siswa->nama_siswa }}</td>
                                    <td>{{ $siswa->tahun_masuk }}</td>
                                    <td>{{ $siswa->tahun_keluar }}</td>
                                    <td>{{ $siswa->status }}</td>
                                    <td>
                                        <button type="button" class="btn btn-icon btn-success" data-bs-toggle="modal" id="modal_edit" data-bs-target="#edit{{ $siswa->id }}">
                                            <i data-feather="edit"></i>
                                        </button>
                                    </td>
                                </tr>
                                @include('content.Master.Siswa.edit_siswa')
                            @endforeach
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

@endsection

@section('page-script')
{{-- Page js files TABLE--}}
{{-- <script src="{{ asset(mix('js/scripts/tables/table-datatables-basic.js')) }}"></script> --}}

<!-- Page js files INPUT-->
{{-- <script src="{{ asset(mix('js/scripts/forms/form-validation.js')) }}"></script> --}}

  <!-- Page js files -->
  <script src="{{ asset(mix('js/scripts/forms/form-select2.js')) }}"></script>
<script>
    $(".basic-select2").select2();

    $(document).ready(function() {
        $('#example').DataTable();
    } );

    $('#jquery-val-form').validate({
        rules: {
            nama: {
                required: true,
            },
            jenjang: {
                required: true,
            }
        },
        messages: {
            nama: {
                required: "Isi Nama Kelas",
            },
            jenjang: {
                required: "Pilih Jenjang Kelas",
            }
        }
    });

</script>
@endsection
