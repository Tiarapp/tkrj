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

@section('title', 'Tema Proyek')

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
<!-- Complex Headers -->
<section id="ajax-datatable">
    <div class="row" >
        <div class="col-12">
            <div class="card" style="padding-left:14px">
                <div class="card-header border-bottom">
                    <button class="btn btn-outline-success round waves-effect btn-sm" type="button" data-bs-toggle="modal" data-bs-target="#inlineForm">
                        <span>
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus me-50 font-small-4">
                                <line x1="12" y1="5" x2="12" y2="19"></line>
                                <line x1="5" y1="12" x2="19" y2="12"></line>
                            </svg>
                            Tema Project
                        </span>
                    </button>
                </div>
                @include('content.Walikelas.Proyek.TemaProyek.add_temaproyek')
                <div class="card-datatable">
                    <table id="example" class="dt-multilingual table">
                        <thead>
                            <tr>
                                <th>Kelas</th>
                                <th>Tema </th>
                                <th>Deskripsi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($tema_proyek as $tp)
                                <tr>
                                    <td>{{ $tp->kelas}} </td>
                                    <td>{{ $tp->tema_proyek}}</td>
                                    <td>{{ $tp->deskripsi}}</td>
                                    {{-- <td>
                                        <button type="button" class="btn btn-icon btn-success" data-bs-toggle="modal" id="modal_edit" data-bs-target="#edit{{ $tp->id }}">
                                            <i data-feather="edit"></i>
                                        </button>
                                    </td> --}}
                                </tr>
                                {{-- @include('content.Master.Area.edit_area') --}}
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
            mulai: {
                required: true,
                number: true,
            },
            selesai: {
                required: true,
                number: true,
            }

        },
        messages: {
            mulai:{
                required: "Isi Kolom Tahun Ajaran Mulai",
                number: "Mohon Diisi Angka",
            },
            selesai:{
                required: "Isi Kolom Tahun Ajaran Selesai",
                number: "Mohon Diisi Angka",
            }
        }
    });
</script>
@endsection
