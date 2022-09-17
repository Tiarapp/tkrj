@extends('layouts/contentLayoutMaster')

@section('vendor-style')
    {{-- vendor css files --}}
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/dataTables.bootstrap5.min.css')) }}">
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/responsive.bootstrap5.min.css')) }}">
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/buttons.bootstrap5.min.css')) }}">
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/rowGroup.bootstrap5.min.css')) }}">
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/pickers/flatpickr/flatpickr.min.css')) }}">
    {{-- Vendor Css files INPUT --}}
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/forms/select/select2.min.css')) }}">
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/pickers/flatpickr/flatpickr.min.css')) }}">

    <link rel="stylesheet" href="{{ asset(mix('vendors/css/extensions/toastr.min.css')) }}">

    <style>

    </style>
@endsection

@section('page-style')
    {{-- Page Css files --}}
        <link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/form-validation.css')) }}">
        <link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/pickers/form-flat-pickr.css')) }}">

<link rel="stylesheet" href="{{ asset(mix('css/base/plugins/extensions/ext-component-toastr.css')) }}">

@endsection

@section('title', 'Data Murid')

@section('content')
<!-- Multilingual -->
    <section id="multilingual-datatable">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header border-bottom p-1">
                        <div class="head-label">
                            <button class="btn btn-outline-success round waves-effect btn-sm" type="button" id="button_tambah" onclick="modal_add()">
                                <span>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus me-50 font-small-4">
                                        <line x1="12" y1="5" x2="12" y2="19"></line>
                                        <line x1="5" y1="12" x2="19" y2="12"></line>
                                    </svg>
                                    Indicators
                                </span>
                            </button>
                        </div>
                        <div class="dt-action-buttons text-end">
                            <div class="dt-buttons d-inline-flex">
                                <div style="margin-right: 10px; width: 200px; text-align: left">
                                    <select class="select2-size-sm form-select select2-hidden-accessible"  id="periode">
                                        <option selected disabled>Pilih Periode</option>
                                        @foreach ($periode as $p)
                                            <option value="{{$p->id}}">{{$p->id_tahunajaran->tahun_ajaran}} || {{$p->semester}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div style="margin-right: 10px; width: 100px; text-align: left">
                                    <select class="select2-size-sm form-select select2-hidden-accessible"  id="periode_ajaran">
                                        <option selected disabled>Pilih Periode Ajaran</option>
                                        <option value="Tengah">Tengah</option>
                                        <option value="Akhir">Akhir</option>
                                    </select>
                                </div>
                                <div style="margin-right: 10px; width: 100px; text-align: left" >
                                    <select class="select2-size-sm form-select select2-hidden-accessible" id="jenjang">
                                        <option selected disabled>Pilih Jenjang</option>
                                        @foreach ($jenjang as $j)
                                            <option value="{{$j->id}}#{{$j->nama_jenjang}}">{{$j->nama_jenjang}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div style="margin-right: 10px">
                                    <button type="button" class="btn btn-icon btn-success btn-sm" onclick="refresh()">
                                        <i data-feather='rotate-cw'></i>
                                    </button>
                                </div>
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
                    {{-- MODAL ADD --}}
                        @include('content.Data.Indicators.add_indicators')
                    <div class="card-datatable">
                        <table id="tabel_awal" class="dt-multilingual table">
                            <thead>
                                <tr>
                                    <th>Areas Of Development</th>
                                    <th>Development Achiement</th>
                                    <th>Indicators</th>
                                    <th>Status</th>
                                    <th>Option</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                    @include('content.Data.Indicators.edit_indicators')
                </div>
            </div>
        </div>
    </section>
<!--/ Multilingual -->
@endsection

@section('vendor-script')
    {{-- vendor files --}}
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
        $('#tabel_awal').DataTable();
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

    $('#jquery-val-form').validate({
        rules: {
            guruekstra_id: {
                required: true,
            },
            ekstra_id: {
                required: true,
            },
            kuota: {
                required: true,
            },
            periode_id: {
                required: true,
            }
        },
        messages: {
            guruekstra_id: {
                required: "Pilih guru ekstra",
            },
            ekstra_id: {
                required: "Pilih ekstra",
            },
            kuota: {
                required: "Isi kuota peserta ekstra",
            },
            periode_id: {
                required: "Pilih periode",
            }
        }
    });

    function refresh(){

        validasi_data_kosong()

        var periode_id = document.getElementById("add_periode_id").value;
        var periode_semester = document.getElementById("add_periode_ajaran").value;
        var jenjang_id = document.getElementById("add_jenjang").value;

        if (periode_id == "") {

        }else{
            data_awal(periode_id, periode_semester, jenjang_id)
        }
    }

    const data_awal = function(periode_id, periode_semester, jenjang_id){
        if (!!periode_id, !!periode_semester, !!jenjang_id) {
            $('#tabel_awal').DataTable({
                bDestroy: true,
                ajax: "/Data/Indicators/data_awal?periode_id=" +periode_id+ "&periode_semester=" +periode_semester+ "&jenjang_id=" +jenjang_id,
                columns: [
                    {data: 'area'},
                    { data: 'development'},
                    { data: 'indicators'},
                    { data: 'status'},
                    { data: null,
                        render: function(data, type, row) {
                            const id = data.id ?? ''
                            return '<button type="button" class="btn btn-icon btn-success" onclick="view_data('+id+')"><i data-feather="edit"></i></button>';
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

    function modal_add() {

        validasi_data_kosong()
        var add_periode_id = document.getElementById("add_periode_id").value

        if (add_periode_id == "") {

        }else{
            $('#inlineForm').modal('show');
        }
    }

    const validasi_data_kosong = function(){
        var id_periode = document.getElementById("periode").value;
        var periode = document.getElementById("periode_ajaran").value;
        var jenjang = document.getElementById("jenjang").value;

        if (id_periode=="Pilih Periode") {
            toastr['error'](
                'Pilih Periode Terlebih Dahulu', 'Error!', {
                    closeButton: true,
                    tapToDismiss: false,
            });
        }else if(periode=="Pilih Periode Ajaran"){
            toastr['error'](
                'Pilih Periode Ajaran Terlebih Dahulu', 'Error!', {
                    closeButton: true,
                    tapToDismiss: false,
            });
        }else if(jenjang=="Pilih Jenjang"){
            toastr['error'](
                'Pilih Jenjang Terlebih Dahulu', 'Error!', {
                    closeButton: true,
                    tapToDismiss: false,
            });
        }else{
            $("#add_periode_id").val(id_periode);
            $("#add_periode_ajaran").val(periode);
            $("#add_jenjang").val(jenjang);

        }
    }

    function data_indicators() {
        var development = document.getElementById('development').value
        if ( development == 1 ) {
            data_ekstra()
        } else if (development == 2) {

        }else if (development == 3) {
            data_doa_harian()
        }else if (development == 4) {
            data_hadist()
        }else if (development == 5) {
            data_tilawah()
        }else if (development == 6) {
            data_tahfidz()
        }else if (development == 7) {
            data_cbi()
        }else if (development == 8) {
            data_cbi()
        }else if (development == 9) {
            data_cbi()
        }
    }

    function view_data(id) {
        if (id) {
            $.ajax({
                type: "GET",
                url: "/Data/Indicators/view_data?id=" +id,
                dataType: 'JSON',
                success:function(result){
                    $("#id").val(result.id);
                    $("#edit_areas").val(result.area);
                    $("#edit_development").val(result.development);
                    $("#edit_indicators").val(result.indicators);
                    console.log(result.status);
                    if (result.status=="Aktif") {
                        $("#status").prop('checked', true);
                    }else{
                        $("#status").prop("checked", false);
                    }
                    $('#modal_edit').modal('show');
                },
                error:function(result)
                {
                    $("#id").empty();
                    $("#areas").empty();
                    $("#development").empty();
                    $("#indicators").empty();
                    $("#status").prop("checked", false);
                }
            });
        } else {
            $("#id").empty();
            $("#areas").empty();
            $("#development").empty();
            $("#indicators").empty();
            $("#status").prop("checked", false);
        }
    }

    const data_ekstra = function(){
        $('#indicators option').each(function() {
            if ( $(this).val() !== '-' ) {
                $(this).remove();
            }
        });

        $.ajax({
            method: 'GET',
            url: "/Data/Indicators/data_ekstra",
            dataType: 'JSON',
            success: function(data){
                const items = data.map((items) => ({ id: items.id, nama: items.ekstra }))

                $('#indicators').append($('<option>', {
                    value: "",
                    text : "Pilih Indicators",
                    disabled:true,
                    selected:true
                }));

                $.each(items, function (i, item) {
                    $('#indicators').append($('<option>', {
                        value: item.id+"#"+item.nama,
                        text : item.nama
                    }));
                });
            },
            error: err => console.log(err)
        })
    }

    const data_doa_harian = function(){
        $('#indicators option').each(function() {
            if ( $(this).val() !== '-' ) {
                $(this).remove();
            }
        });

        $.ajax({
            method: 'GET',
            url: "/Data/Indicators/data_doa_harian",
            dataType: 'JSON',
            success: function(data){
                const items = data.map((items) => ({ id: items.id, nama: items.doa_harian }))

                $('#indicators').append($('<option>', {
                    value: "",
                    text : "Pilih Doa-doa Harian",
                    disabled:true,
                    selected:true
                }));

                $.each(items, function (i, item) {
                    $('#indicators').append($('<option>', {
                        value: item.id+"#"+item.nama,
                        text : item.nama
                    }));
                });
            },
            error: err => console.log(err)
        })
    }

    const data_hadist = function(){
        $('#indicators option').each(function() {
            if ( $(this).val() !== '-' ) {
                $(this).remove();
            }
        });

        $.ajax({
            method: 'GET',
            url: "/Data/Indicators/data_hadist",
            dataType: 'JSON',
            success: function(data){
                const items = data.map((items) => ({ id: items.id, nama: items.hadist }))

                $('#indicators').append($('<option>', {
                    value: "",
                    text : "Pilih Indicators",
                    disabled:true,
                    selected:true
                }));

                $.each(items, function (i, item) {
                    $('#indicators').append($('<option>', {
                        value: item.id+"#"+item.nama,
                        text : item.nama
                    }));
                });
            },
            error: err => console.log(err)
        })
    }

    const data_tilawah = function(){
        $('#indicators option').each(function() {
            if ( $(this).val() !== '-' ) {
                $(this).remove();
            }
        });

        $.ajax({
            method: 'GET',
            url: "/Data/Indicators/data_tilawah",
            dataType: 'JSON',
            success: function(data){
                const items = data.map((items) => ({ id: items.id, nama: items.keterangan }))

                $('#indicators').append($('<option>', {
                    value: "",
                    text : "Pilih Indicators",
                    disabled:true,
                    selected:true
                }));

                $.each(items, function (i, item) {
                    $('#indicators').append($('<option>', {
                        value: item.id+"#"+item.nama,
                        text : item.nama
                    }));
                });
            },
            error: err => console.log(err)
        })
    }

    const data_tahfidz = function(){
        $('#indicators option').each(function() {
            if ( $(this).val() !== '-' ) {
                $(this).remove();
            }
        });

        $.ajax({
            method: 'GET',
            url: "/Data/Indicators/data_tahfidz",
            dataType: 'JSON',
            success: function(data){
                const items = data.map((items) => ({ id: items.id, nama: items.surat }))

                $('#indicators').append($('<option>', {
                    value: "",
                    text : "Pilih Indicators",
                    disabled:true,
                    selected:true
                }));

                $.each(items, function (i, item) {
                    $('#indicators').append($('<option>', {
                        value: item.id+"#"+item.nama,
                        text : item.nama
                    }));
                });
            },
            error: err => console.log(err)
        })
    }

    const data_cbi = function(){
        $('#indicators option').each(function() {
            if ( $(this).val() !== '-' ) {
                $(this).remove();
            }
        });

        $.ajax({
            method: 'GET',
            url: "/Data/Indicators/data_cbi",
            dataType: 'JSON',
            success: function(data){
                const items = data.map((items) => ({ id: items.id, nama: items.cbi }))

                $('#indicators').append($('<option>', {
                    value: "",
                    text : "Pilih Indicators",
                    disabled:true,
                    selected:true
                }));

                $.each(items, function (i, item) {
                    $('#indicators').append($('<option>', {
                        value: item.id+"#"+item.nama,
                        text : item.nama
                    }));
                });
            },
            error: err => console.log(err)
        })
    }

    // RESET TABEL
        const reset_table = function(){
            $('#tabel_awal').DataTable({
                bDestroy: true
            });
        }

</script>
@endsection
