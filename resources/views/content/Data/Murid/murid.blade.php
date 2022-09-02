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
                            <button class="btn btn-outline-success round waves-effect btn-sm" type="button" id="button_tambah" onclick="tambah()">
                                <span>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus me-50 font-small-4">
                                        <line x1="12" y1="5" x2="12" y2="19"></line>
                                        <line x1="5" y1="12" x2="19" y2="12"></line>
                                    </svg>
                                    Murid
                                </span>
                            </button>
                        </div>
                        <div class="dt-action-buttons text-end">
                            <div class="dt-buttons d-inline-flex">
                                <select class="form-select-sm" id="thn_ajaran" style="margin-right: 10px">
                                    <option selected disabled>Pilih Tahun Ajaran</option>
                                    @foreach ($tahunajaran as $t)
                                        <option value="{{$t->id}}">{{$t->tahun_ajaran}}</option>
                                    @endforeach
                                </select>
                                <select class="form-select-sm" id="kelas" style="margin-right: 10px">
                                    <option selected disabled>Pilih Kelas</option>
                                    @foreach ($kelas as $k)
                                        <option value="{{$k->id}}">{{$k->nama_kelas}}</option>
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
                    {{-- MODAL ADD --}}
                        @include('content.Data.Murid.add_murid')
                    <div class="card-datatable">
                        <table id="example" class="dt-multilingual table">
                            <thead>
                                <tr>
                                    <th style="width: 50px">Absen</th>
                                    <th style="width: 50px">NIS</th>
                                    <th style="width: 150px">Nama</th>
                                    <th style="width: 20px">Kelas</th>
                                    <th style="width: 70px">Extra</th>
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
        $('#example').DataTable();
        $('#murid_awal').DataTable();
        $('#murid_pindah').DataTable();
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

    function tambah() {
        var thn = document.getElementById("thn_ajaran").value;
        var kls = document.getElementById("kelas").value;

        if (thn == "Pilih Tahun Ajaran" && kls == "Pilih Kelas") {
            toastr['error'](
                'Pilih Tahun Ajaran dan Kelas terlebih dahulu', 'Error!', {
                    closeButton: true,
                    tapToDismiss: false,
            });
        }else{
            $('#add_datamurid').modal('show');
        }

        if (thn == "Pilih Tahun Ajaran") {
            toastr['error'](
                'Pilih Tahun Ajaran', 'Error!', {
                    closeButton: true,
                    tapToDismiss: false,
            });
        }else{
            $('#add_datamurid').modal('show');
        }

        if (kls == "Pilih Kelas") {
            toastr['error'](
                'Pilih Kelas terlebih dahulu', 'Error!', {
                    closeButton: true,
                    tapToDismiss: false,
            });
        }else{
            $('#add_datamurid').modal('show');
        }
    }

    // TAMPILAN AWAL
        // DATA MURID TAHUN
            $('#thn_ajaran').change(function () {
                var tahunajaran = document.getElementById("thn_ajaran").value;

                if (tahunajaran) {
                    $('#example').DataTable({
                        bDestroy: true,
                        ajax: "/Data/Murid/get_murid_tahun?tahunajaran=" +tahunajaran,
                        columns: [
                            { data: 'absen'},
                            { data: 'nis'},
                            { data: 'nama'},
                            { data: 'kelas'},
                            { data: 'extra'},
                        ]
                    });
                    $('#murid_awal').DataTable({
                        bDestroy: true,
                        ajax: "/Data/Murid/data_siswa_awal?tahunajaran=" +tahunajaran,
                        columns: [
                            {data: null,
                                render: function(data, type, row) {
                                    const siswa_id = data.siswa_id ?? ''
                                    return '<div class="form-check form-check-success"><input type="checkbox" name="siswa_id[]" value="'+siswa_id+'" class="form-check-input" id="colorCheck3"/></div>';
                                }
                            },
                            {data: null,
                                render: function(data, type, row) {
                                    const siswa_id = data.id ?? ''
                                    return '<input type="text" class="form-control" name="absen['+siswa_id+']" id="absen" value="">';
                                }
                            },
                            {data: null,
                                    render: function(data, type, row) {
                                        const nis = data.nis ?? ''
                                        const siswa_id = data.id ?? ''
                                        return '<input type="text" class="form-control" name="nis['+siswa_id+']" id="nis" value="'+nis+'" readonly>';
                                    }
                            },
                            {data: null,
                                    render: function(data, type, row) {
                                        const nama = data.nama ?? ''
                                        const siswa_id = data.id ?? ''
                                        return '<input type="text" class="form-control" name="nama['+siswa_id+']" id="nama" value="'+nama+'" required>';
                                    }
                            },
                            {data: null,
                                    render: function(data, type, row) {
                                        const kelas = data.kelas ?? ''
                                        const siswa_id = data.id ?? ''
                                        return '<input type="text" class="form-control" name="kelas['+siswa_id+']" id="kelas" value="'+kelas+'" required>';
                                    }
                            },
                        ]
                    });
                } else {
                    $('#example').DataTable({
                        bDestroy: true
                    });
                    $('#murid_awal').DataTable({
                        bDestroy: true
                    });
                }
            });

        // DATA TAHUN AJARAN + KELAS
            $('#kelas').change(function () {
                    var tahunajaran = document.getElementById("thn_ajaran").value;
                    var kelas = document.getElementById("kelas").value;

                    if (tahunajaran, kelas) {
                        $('#example').DataTable({
                            bDestroy: true,
                            ajax: "/Data/Murid/get_murid_tahun?tahunajaran="+tahunajaran+"&kelas="+kelas,
                            columns: [
                                { data: 'absen'},
                                { data: 'nis'},
                                { data: 'nama'},
                                { data: 'kelas'},
                                { data: 'extra'},
                            ]
                        });
                        $('#murid_awal').DataTable({
                            bDestroy: true,
                            ajax: "/Data/Murid/data_siswa_awal?tahunajaran=" +tahunajaran,
                            columns: [
                                {data: null,
                                    render: function(data, type, row) {
                                        const siswa_id = data.siswa_id ?? ''
                                        return '<div class="form-check form-check-success"><input type="checkbox" name="siswa_id[]" value="'+siswa_id+'" class="form-check-input" id="colorCheck3"/></div>';
                                    }
                                },
                                {data: null,
                                    render: function(data, type, row) {
                                        const siswa_id = data.id ?? ''
                                        return '<input type="text" class="form-control" name="absen['+siswa_id+']" id="absen" value="">';
                                    }
                                },
                                {data: null,
                                    render: function(data, type, row) {
                                        const nis = data.nis ?? ''
                                        const siswa_id = data.id ?? ''
                                        return '<input type="text" class="form-control" name="nis['+siswa_id+']" id="nis" value="'+nis+'" readonly>';
                                    }
                                },
                                {data: null,
                                        render: function(data, type, row) {
                                            const nama = data.nama ?? ''
                                            const siswa_id = data.id ?? ''
                                            return '<input type="text" class="form-control" name="nama['+siswa_id+']" id="nama" value="'+nama+'" required>';
                                        }
                                },
                                {data: null,
                                    render: function(data, type, row) {
                                        const kelas = data.kelas ?? ''
                                        const siswa_id = data.id ?? ''
                                        return '<input type="text" class="form-control" name="kelas['+siswa_id+']" id="kelas" value="'+kelas+'" required>';
                                    }
                                },
                            ]
                        });
                    } else {
                        $('#example').DataTable({
                            bDestroy: true
                        });
                        $('#murid_awal').DataTable({
                            bDestroy: true
                        });
                    }
                });

    // MODAL ADD SISWA

        $('#kelas_awal').change(function () {
            var kelas_awal = document.getElementById("kelas_awal").value;

            if (kelas_awal == "Baru") {
                document.getElementById('thn_msk').hidden = false;
                // document.getElementById('filter_thn').hidden = true;
            } else {
                document.getElementById('thn_msk').hidden = true;
                // document.getElementById('filter_thn').hidden = false;
            }
        });

        // ID TAHUN AJARAN DAN KELAS ADD AWAL
            $('#thn_ajaran').change(function () {
                var thn_ajaran = document.getElementById("thn_ajaran").value;

                document.getElementById("thn_ajaran_select").value=thn_ajaran;
            });
            $('#kelas').change(function () {
                var thn_ajaran = document.getElementById("kelas").value;

                    document.getElementById("kelas_select").value=thn_ajaran;
            });

        // FILTER TAHUN MASUK SISWA BARU
            $('#filter_tahun_masuk').change(function () {
                var tahun_masuk = document.getElementById("filter_tahun_masuk").value;

                if (tahun_masuk) {
                    $('#murid_awal').DataTable({
                        bDestroy: true,
                        ajax: "/Data/Murid/data_siswa_baru?tahun_masuk=" +tahun_masuk,
                        columns: [
                            {data: null,
                                render: function(data, type, row) {
                                    const siswa_id = data.id ?? ''
                                    return '<div class="form-check form-check-success"><input type="checkbox" name="siswa_id[]" value="'+siswa_id+'" class="form-check-input" id="colorCheck3"/></div>';
                                }
                            },
                            {data: null,
                                render: function(data, type, row) {
                                    const siswa_id = data.id ?? ''
                                    return '<input type="text" class="form-control" name="absen['+siswa_id+']" id="absen" value="" >';
                                }
                            },
                            {data: null,
                                render: function(data, type, row) {
                                    const nis = data.nis ?? ''
                                    const siswa_id = data.id ?? ''
                                    return '<input type="text" class="form-control" name="nis['+siswa_id+']" id="nis" value="'+nis+'" readonly>';
                                }
                            },
                            {data: null,
                                render: function(data, type, row) {
                                    const nama = data.nama ?? ''
                                    const siswa_id = data.id ?? ''
                                    return '<input type="text" class="form-control" name="nama['+siswa_id+']" id="nama" value="'+nama+'" readonly>';
                                }
                            },
                            {data: null,
                                render: function(data, type, row) {
                                    return '';
                                }
                            },
                        ]
                    });
                } else {
                    $('#murid_awal').DataTable({
                        bDestroy: true
                    });
                }
            });

        // FILTER KELAS
            $('#kelas_awal').change(function () {
                var kelas_awal = document.getElementById("kelas_awal").value;
                var tahunajaran = document.getElementById("thn_ajaran").value;

                if (tahunajaran, kelas_awal) {
                    $('#murid_awal').DataTable({
                        bDestroy: true,
                        ajax: "/Data/Murid/filter_kelas_add?tahunajaran=" +tahunajaran+"&kelas_awal="+kelas_awal,
                        columns: [
                            {data: null,
                                render: function(data, type, row) {
                                    const siswa_id = data.id ?? ''
                                    return '<div class="form-check form-check-success"><input type="checkbox" name="siswa_id[]" value="'+siswa_id+'" class="form-check-input" id="colorCheck3"/></div>';
                                }
                            },
                            {data: null,
                                render: function(data, type, row) {
                                    const siswa_id = data.id ?? ''
                                    return '<input type="text" class="form-control" name="absen['+siswa_id+']" id="absen" value="">';
                                }
                            },
                            {data: null,
                                render: function(data, type, row) {
                                    const nis = data.nis ?? ''
                                    const siswa_id = data.id ?? ''
                                    return '<input type="text" class="form-control" name="nis['+siswa_id+']" id="nis" value="'+nis+'" readonly>';
                                }
                            },
                            {data: null,
                                render: function(data, type, row) {
                                    const nama = data.nama ?? ''
                                    const siswa_id = data.id ?? ''
                                    return '<input type="text" class="form-control" name="nama['+siswa_id+']" id="nama" value="'+nama+'" readonly>';
                                }
                            },
                            {data: null,
                                render: function(data, type, row) {
                                    const kelas = data.kelas ?? ''
                                    const siswa_id = data.id ?? ''
                                    return '<input type="text" class="form-control" name="kelas['+siswa_id+']" id="kelas" value="'+kelas+'" readonly>';
                                }
                            },
                        ]
                    });
                } else {
                    $('#murid_awal').DataTable({
                        bDestroy: true
                    });
                }
            });

</script>
@endsection
