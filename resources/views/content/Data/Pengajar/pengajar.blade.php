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

@section('title', 'Data Pengajar')

@section('content')
<!-- Complex Headers -->
<section id="complex-header-datatable">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header border-bottom p-1">
                    <div class="head-label">
                        <button class="btn btn-outline-success round waves-effect btn-sm" type="button" onclick="add_modal()">
                            <span>
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus me-50 font-small-4">
                                    <line x1="12" y1="5" x2="12" y2="19"></line>
                                    <line x1="5" y1="12" x2="19" y2="12"></line>
                                </svg>
                                Pengajar
                            </span>
                        </button>
                    </div>
                    <div class="dt-action-buttons text-end">
                        <div class="dt-buttons d-inline-flex">
                            <select class="select2-size-sm form-select select2-hidden-accessible" id="filter_tahunajaran" style="margin-right: 10px">
                                <option selected disabled>Pilih Tahun Ajaran</option>
                                @foreach ($tahunajaran as $t)
                                    <option value="{{$t->id}}">{{$t->tahun_ajaran}}</option>
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
                @include('content.Data.Pengajar.add_pengajar')
                <div class="card-datatable">
                    <table id="tabel_awal" class="dt-multilingual table">
                        <thead>
                            <tr>
                                <th>Nama</th>
                                <th>Kelas</th>
                                <th>Tahun Ajaran</th>
                                <th>Option</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
                @include('content.Data.Pengajar.edit_pengajar')
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
        $('#tabel_awal').DataTable();

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
            add_guru: {
                required: true,
            },
            add_mapel: {
                required: true,
            },
            add_kelas: {
                required: true,
            }
        },
        messages: {
            add_guru: {
                required: "Pilih guru pengajar",
            },
            add_mapel: {
                required: "Pilih matapelajaran yang diajarkan",
            },
            add_kelas: {
                required: "Pilih kelas yang diajar",
            }
        }
    });

    $('#filter_tahunajaran').change(function () {
        var id_tahunajaran = document.getElementById("filter_tahunajaran").value;

        if (id_tahunajaran == '' || id_tahunajaran == null){
            return;
        }

        set_table_awal_periode(id_tahunajaran)
    });

    // TABEL AWAL
        const set_table_awal_periode = function(id){

            const onSuccess = function(response){
                const data = response.data

                reset_table()

                $('#tabel_awal').DataTable({
                    bDestroy: true,
                    data: data,
                    columns: [
                        { data: 'nama'},
                        { data: 'kelas'},
                        { data: 'tahunajaran'},
                        { data: null,
                            render: function(data, type, row) {
                                const data_pengajar = data.id ?? ''
                                return '<button type="button" class="btn btn-icon btn-success" onclick="modal_edit('+data_pengajar+')"><i data-feather="edit"></i></button>';
                            }
                        }
                    ],
                    initComplete: function(settings, json) {
                        feather.replace()
                    }
                });

            }

            $.ajax({
                method: 'GET',
                url: "/Data/Pengajar/data_awal_pertahun?id_tahunajaran=" + id,
                dataType: 'JSON',
                success: onSuccess,
                error: err => console.log(err)
            })

        }

    // RESET TABEL
        const reset_table = function(){
            $('#tabel_awal').DataTable({
                bDestroy: true
            });
        }

    // SHOW MODAL ADD
        function add_modal() {
            var id_tahunajaran = document.getElementById("filter_tahunajaran").value;
            var id_kelas = document.getElementById("add_kelas").value;

            if (id_tahunajaran == "Pilih Tahun Ajaran") {
                toastr['error'](
                    'Pilih Tahun Ajaran Terlebih Dahulu', 'Error!', {
                        closeButton: true,
                        tapToDismiss: false,
                });
            }else{
                document.getElementById("add_tahunajaran").value=id_tahunajaran;
                $('#inlineForm').modal('show');
            }
        }

        // SELECT MAPEL PER TAHUN AJARAN DAN JENJANG
            $('#add_kelas').change(function () {
                var id_tahunajaran = document.getElementById("filter_tahunajaran").value;
                var id_kelas = document.getElementById("add_kelas").value;
            });

    // VIEW MODAL EDIT
        function modal_edit(data_pengajar) {

            if (data_pengajar) {
                $.ajax({
                    type: "GET",
                    url: "/Data/Pengajar/filter_pengajar?pengajar_id=" +data_pengajar,
                    dataType: 'JSON',
                    success:function(result){

                        $('#id').val(result.id);
                        $('#edit_guru').val(result.guru_id).change();
                        $('#edit_kelas').val(result.kelas_id).change();
                        $('#edit').modal('show');
                    },
                    error:function(result)
                    {
                        $('#id').empty();
                        $('#edit_guru').empty();
                        $('#edit_kelas').empty();
                    }
                });
            } else {
                $('#id').empty();
                $('#edit_guru').empty();
                $('#edit_kelas').empty();
            }

        }

</script>
@endsection
