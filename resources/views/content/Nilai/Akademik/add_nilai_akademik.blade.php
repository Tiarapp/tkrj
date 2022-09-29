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

@section('title', 'Input Akademik')

@section('content')
<!-- Complex Headers -->
<section id="complex-header-datatable">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="row">
                    <div class="col-4">
                        <div class="card-header">
                            <h4 class="card-title">Input Nilai Kelas: {{$detail_pengajar->kelas}}</h4>
                        </div>
                    </div>
                    <div class="col-3" style="margin-top: 20px">
                        <select class="select2-size-sm form-select" name="tema_id" id="tema_id">
                            <option value="" selected disabled>Pilih Tema</option>
                            @foreach ($tema as $t)
                                <option value="{{$t->id}}">{{$t->tema}}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="col-4" style="margin-top: 20px">
                        <select class="select2-size-sm form-select" name="tk_id" id="tk_id">
                            <option value="" selected disabled>Pilih TK</option>
                            @foreach ($tk as $t)
                                <option value="{{$t->id}}">{{$t->kode_ref}} || {{$t->nama_tk}}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="col-1" style="margin-top: 20px">
                        <button type="button" class="btn btn-icon btn-success btn-sm" onclick="refresh()">
                            <i data-feather='rotate-cw'></i>
                        </button>
                    </div>
                </div>

                <div class="card-datatable">
                    <form id="jquery-val-form" action="{{route('nilai.akademik.add')}}" method="post" enctype="multipart/form-data">
                        {{csrf_field()}}

                        {{-- ID --}}
                            <input type="hidden" name="id_pengajar" id="id_pengajar" value="{{$detail_pengajar->id}}">
                            <input type="hidden" name="id_tk" id="id_tk" required>
                            <input type="hidden" name="id_tema" id="id_tema" required>

                        <table id="example" class="dt-multilingual table">
                            <thead>
                                <tr>
                                    <th style="text-align: center; width: 40px">Absen</th>
                                    <th style="text-align: center;">Nama</th>
                                    <th >Sudah Muncul</th>
                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($murid as $m)
                                    <tr>
                                        <td>{{$m->absen}}</td>
                                        <td style="width: 400px">{{$m->nama}}</td>
                                        <td>
                                            <input type="checkbox" class="form-check-input nilai" name="nilai[{{$m->id}}]" id="nilai_{{$m->id}}" />
                                        </td>
                                        <td>
                                            <a href="#" id="hreff_{{$m->id}}">
                                                <button type="button" class="btn btn-icon btn-danger btn-sm" id="delete_{{$m->id}}" hidden>
                                                    <i data-feather='trash-2'></i>
                                                </button>
                                            </a>
                                        </td>
                                        {{-- ID MURID --}}
                                            <input type="hidden" name="add_murid_id[{{$m->id}}]" value="{{$m->id}}">
                                        {{-- ID NILAI --}}
                                            <input class="id_nilai_akademik" type="hidden" name="id_nilai_akademik[{{$m->id}}]" id="id_nilai_akademik_{{$m->id}}">
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>

                        <div class="modal-footer" style="float: left;">
                            <button type="submit" class="btn btn-primary me-1">Submit</button>
                            <button type="reset" class="btn btn-outline-secondary">Reset</button>
                        </div>
                    </form>
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

  <!-- Page js files -->
  <script src="{{ asset(mix('js/scripts/forms/form-select2.js')) }}"></script>
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

    $('#jquery-val-form').validate({
        rules: {
            id_akademik: {
                required: true,
            },
            id_tema: {
                required: true,
            }
        },
        messages: {
            id_akademik: {
                required: "Pilih TK Terlebih Dahulu",
            },
            id_tema: {
                required: "Pilih Tema Terlebih Dahulu",
            }
        }
    });

    // SELECT INDIKATOR IBADAH
        $('#tk_id').change(function () {
            var id_tk = document.getElementById("tk_id").value;
            var id_tema=document.getElementById("tema_id").value
            var id_pengajar= document.getElementById("id_pengajar").value;

            document.getElementById("id_tk").value=id_tk;
            document.getElementById("id_tema").value=id_tema;
        });

    function refresh() {
        var id_tema= document.getElementById('tema_id').value;
        var id_tk= document.getElementById('tk_id').value;
        var id_pengajar= document.getElementById('id_pengajar').value;

        if (id_tema=="" || id_tk=="") {
            toastr['error'](
                'Cek Pilihan Tema dan Pilihan TK', 'Error!', {
                    closeButton: true,
                    tapToDismiss: false,
            });
        }
        data_edit(id_tema, id_tk, id_pengajar);
    }

    // DATA EDIT
        const data_edit = function(id_tema, id_tk, id_pengajar){
            if (id_tema, id_tk, id_pengajar) {
                $.ajax({
                    type: "GET",
                    url: "/Nilai/Akademik/edit_nilai?id_tema="+id_tema+"&id_tk=" +id_tk+"&id_pengajar="+id_pengajar,
                    dataType: 'JSON',
                    success:function(result){

                        if (result.length == 0) {

                            const reset = (idx, elem) => (elem.value = null)

                            $('.id_nilai_akademik').map(reset)
                            $('.nilai').prop("checked", false);
                        } else {
                            for (let index = 0; index < result.length; index++) {
                                $("#id_nilai_akademik_"+result[index].murid_id).val(result[index].id);
                                $("#nilai_"+result[index].murid_id).prop("checked", true);
                                document.getElementById("hreff_"+result[index].murid_id).href="/Nilai/Akademik/delete"+result[index].id;
                                document.getElementById("delete_"+result[index].murid_id).hidden=false;
                            }
                        }
                    },
                    error:function(result)
                    {
                        const reset = (idx, elem) => (elem.value = null)

                            $('.id_nilai_akademik').map(reset)
                            $('.nilai').prop("checked", false);
                    }
                });
            } else {
                const reset = (idx, elem) => (elem.value = null)

                    $('.id_nilai_akademik').map(reset)
                    $('.nilai').prop("checked", false);
            }
        }

</script>
@endsection
