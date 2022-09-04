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
    <link rel="stylesheet" href="{{asset('css/base/pages/ui-feather.css')}}">
@endsection

@section('title', 'Wali Kelas')

@section('content')
<!-- Complex Headers -->
<section id="complex-header-datatable">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header border-bottom p-1">
                    <div class="head-label">
                        <button class="btn btn-outline-success round waves-effect btn-sm" type="button" onclick="modal_add()">
                            <span>
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus me-50 font-small-4">
                                    <line x1="12" y1="5" x2="12" y2="19"></line>
                                    <line x1="5" y1="12" x2="19" y2="12"></line>
                                </svg>
                                Wali Kelas
                            </span>
                        </button>
                    </div>
                    <div class="dt-action-buttons text-end">
                        <div class="dt-buttons d-inline-flex">
                            <select class="select2-size-sm form-select" id="id_tahunajaran">
                                <option value="-" disabled selected>Pilih TahunAjaran</option>
                                @foreach ($tahunajaran as $t)
                                    <option value="{{$t->id}}">{{$t->tahun_ajaran}}</option>
                                @endforeach
                            </select>
                            <select class="select2-size-sm form-select" id="id_jenjang">
                                <option value="-" disabled selected>Pilih Jenjang</option>
                                @foreach ($jenjang as $j)
                                    <option value="{{$j->id}}">{{$j->nama_jenjang}}</option>
                                @endforeach
                            </select>
                            <button type="button" class="btn btn-sm btn-icon btn-success" style="margin-right: 10px" onclick="refresh_data()"><i data-feather='refresh-cw'></i></button>
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
                @include('content.Data.Walikelas.add_walikelas')
                <div class="card-datatable">
                    <table id="tabel_awal" class="dt-multilingual table">
                        <thead>
                            <tr>
                                <th>Nama </th>
                                <th>Kelas</th>
                                <th>Jenjang</th>
                                <th>Option</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
                @include('content.Data.Walikelas.edit_walikelas')
            </div>
        </div>
    </div>
</section>
<!--/ Complex Headers -->
@endsection

@section('vendor-script')
    <script src="{{ asset(mix('vendors/js/jquery/jquery.min.js')) }}"></script>

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
        <script src="{{asset('vendors/js/extensions/toastr.min.js')}}"></script>

@endsection

@section('page-script')

  <!-- Page js files -->
  <script src="{{ asset(mix('js/scripts/forms/form-select2.js')) }}"></script>
  <script src="{{asset('js/scripts/ui/ui-feather.js')}}"></script>
<script>

    $(document).ready(function() {
        $('#tabel_awal').DataTable();
        $(".basic-select2").select2();
        $('#id_tahunajaran').wrap('<div class="position-relative"></div>').select2({
            containerCssClass: 'select-sm'
        });

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

    $('#jquery-val-form').validate({
        rules: {
            add_id_guru: {
                required: true,
            },
            add_id_kelas: {
                required: true,
            }
        },
        messages: {
            add_id_guru: {
                required: "Pilih Guru Terlebih Dahulu",
            },
            add_id_kelas: {
                required: "Pilih Kelas Terlebih Dahulu",
            }
        }
    });

    $('#form_edit_kelas').validate({
        rules: {
            edit_nama: {
                required: true,
            }
        },
        messages: {
            edit_nama: {
                required: "Isi Nama Kelas",
            }
        }
    });

    // TAMPILAN AWAL
        // DATA WALIKELAS
            function refresh_data() {
                var id_tahunajaran = document.getElementById("id_tahunajaran").value;
                var id_jenjang = document.getElementById("id_jenjang").value;

                if (id_tahunajaran=="-" && id_jenjang=="-") {
                    toastr['error'](
                        'Pilih Tahun Ajaran dan Jenjang', 'Error!', {
                            closeButton: true,
                            tapToDismiss: false,
                    });
                } else if(id_tahunajaran=="-"){
                    toastr['error'](
                        'Pilih Tahun Ajaran', 'Error!', {
                            closeButton: true,
                            tapToDismiss: false,
                    });
                }else if(id_jenjang=="-"){

                    toastr['error'](
                        'Pilih Jenjang', 'Error!', {
                            closeButton: true,
                            tapToDismiss: false,
                    });
                }else {
                    document.getElementById("add_id_tahunajaran").value=id_tahunajaran;
                    document.getElementById("add_id_jenjang").value=id_jenjang;

                    data_awal(id_tahunajaran, id_jenjang)
                }
            }

            const data_awal = function(id_tahunajaran, id_jenjang){
                if (!!id_tahunajaran,!!id_jenjang) {
                    $('#tabel_awal').DataTable({
                        bDestroy: true,
                        ajax: "/Data/Walikelas/data_awal?id_tahunajaran="+id_tahunajaran+"&id_jenjang="+id_jenjang,
                        columns: [
                            { data: 'nama'},
                            { data: 'kelas'},
                            { data: 'jenjang'},
                            { data: null,
                                render: function(data, type, row) {
                                    const w = data.id ?? ''
                                    return '<button type="button" class="btn btn-icon btn-success" onclick="view_data('+w+')"><i data-feather="edit"></i></button>';
                                }
                            }
                        ],
                        initComplete: function(settings, json) {
                            feather.replace()
                        }
                    });
                } else {
                    $('#tabel_awal').DataTable({
                        bDestroy: true
                    });
                }
            }

    // MODAL ADD
        function modal_add() {
            var id_tahunajaran = document.getElementById("id_tahunajaran").value;
            var id_jenjang = document.getElementById("id_jenjang").value;
            document.getElementById("add_id_tahunajaran").value=id_tahunajaran;
            document.getElementById("add_id_jenjang").value=id_jenjang;

            if (id_tahunajaran=="-" && id_jenjang=="-") {
                toastr['error'](
                    'Pilih Tahun Ajaran dan Jenjang', 'Error!', {
                        closeButton: true,
                        tapToDismiss: false,
                });
            } else if(id_tahunajaran=="-"){
                toastr['error'](
                    'Pilih Tahun Ajaran', 'Error!', {
                        closeButton: true,
                        tapToDismiss: false,
                });
            }else if(id_jenjang=="-"){

                toastr['error'](
                    'Pilih Jenjang', 'Error!', {
                        closeButton: true,
                        tapToDismiss: false,
                });
            }else {
                $('#inlineForm').modal('show');
            }
        }

    // MODAL EDIT
        function view_data(data_walikelas) {
            if (data_walikelas) {
                $.ajax({
                    type: "GET",
                    url: "/Data/Walikelas/view_walikelas?data_walikelas=" +data_walikelas,
                    dataType: 'JSON',
                    success:function(result){
                        $("#id_data").val(result.id);
                        $("#edit_id_guru").val(result.guru_id).change();
                        $("#edit_id_kelas").val(result.kelas_id).change();
                        $('#modal_edit').modal('show');
                    },
                    error:function(result)
                    {
                        $("#id_data").empty();
                        $("#edit_id_guru").empty();
                        $("#edit_id_kelas").empty();
                    }
                });
            } else {
                $("#id_data").empty();
                $("#edit_id_guru").empty();
                $("#edit_id_kelas").empty();
            }
        }

</script>
@endsection
