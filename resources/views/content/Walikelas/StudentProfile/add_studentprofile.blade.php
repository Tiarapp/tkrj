@extends('layouts/contentLayoutMaster')

@section('vendor-style')

    {{-- vendor css files TABLE --}}
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
        th.rotate {
            height: 190px;
            width: 20px!important;
            padding-top: 10px;
            padding-bottom: 0px;
            font-weight: normal;
            /* transform: rotate(-90deg); */
            white-space: nowrap;
        }
        th.rotate {
            height: 190px;
            width: 20px;
            /* padding: 0px; */
            padding-top: 10px;
            padding-bottom: 0px;
            font-weight: normal;
        }

        th.rotate > div {
            -webkit-transform: rotate(-90deg);
            -moz-transform: rotate(-90deg);
            -ms-transform: rotate(-90deg);
            -o-transform: rotate(-90deg);
            filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=3);

            padding-bottom: 10px!important;
        }
        .text-vertical {

            overflow:visible:
            height: 180px !important;
            width: 20px !important;
            text-align:left;
            margin-top:200px !important;
        }
    </style>
@endsection

@section('page-style')

    {{-- Page Css files --}}
    <link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/form-validation.css')) }}">
    <link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/pickers/form-flat-pickr.css')) }}">

    <link rel="stylesheet" href="{{ asset(mix('css/base/plugins/extensions/ext-component-toastr.css')) }}">
@endsection

@section('title', 'Input Skill Value')

@section('content')
    <!-- Complex Headers -->
    <section id="complex-header-datatable">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">
                            Input Student Profile
                        </h4>
                    </div>

                    <div class="card-datatable">
                        <form id="jquery-val-form" action="{{ route('walikelas.studentprofile.add') }}" method="post" enctype="multipart/form-data">
                            {{ csrf_field() }}

                            {{-- ID WALIKELAS --}}
                                <input type="hidden" id="add_walas_id" name="add_walas_id" value="{{$walikelas->id}}">

                            <table id="example" class="dt-complex-header table table-bordered table-responsive">
                                <thead>
                                    <tr>
                                        <th rowspan="2" style="text-align: center;">Nama</th>
                                        <th rowspan="2" style="text-align: center; width: 30px">Absen</th>
                                        <th colspan="{{$count_master_indikator}}" style="text-align: center;">Profile</th>
                                    </tr>
                                    <tr>
                                        @foreach ($master_indikator as $m_i)
                                            <th class="rotate">
                                                <div class="text-vertical">
                                                    {{$m_i->indikator_studentprofile}}
                                                </div>
                                            </th>
                                        @endforeach
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($murid as $m)
                                        <tr>
                                            {{-- ID STUDENTPROFILE --}}
                                                <input type="hidden" id="add_studentprofile_id_{{ $m->id }}" name="add_studentprofile_id[{{ $m->id }}]">

                                            <td style="text-align: center">{{ $m->absen }}</td>
                                            <td style="white-space: nowrap;">{{ $m->nama }}</td>

                                            @foreach ($master_indikator as $mi2)
                                                <td>
                                                    {{-- ID STUDENTPROFILE DETAIL--}}
                                                    <input class="data" type="hidden" id="id_nilai_{{ $m->id }}_{{ $mi2->id }}" name="id_nilai[{{ $m->id }}][{{ $mi2->id }}]">

                                                    <select class="form-select data_select" style="width: 50px!important;"  id="nilai_{{ $m->id }}_{{ $mi2->id }}" name="nilai[{{ $m->id }}][{{ $mi2->id }}]">
                                                        <option value="" selected disabled></option>
                                                        <option value="vg">VG</option>
                                                        <option value="g">G</option>
                                                        <option value="s">S</option>
                                                        <option value="ni">NI</option>
                                                    </select>
                                                </td>
                                            @endforeach
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

    {{-- vendor files TABLE --}}
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
            $('#example').DataTable({
                "searching":    false,
                "paging":       false
            });

            @if ($message = Session::get('succes'))

                toastr['success'](
                    '{!! $message !!}',
                    'Sukses', {
                        showDuration: 500
                    }
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

            var walikelas_id= document.getElementById("add_walas_id").value;
            data_edit(walikelas_id);
        });

        const data_edit = function(id_walikelas){
            if (id_walikelas) {
                $.ajax({
                    type: "GET",
                    url: "/Walikelas/StudentProfile/edit_nilai?id_walikelas=" +id_walikelas,
                    dataType: 'JSON',
                    success:function(result){

                        if (result.length == 0) {

                            const reset = (idx, elem) => (elem.value = null)

                            $('.id_nilai_cbi').map(reset)
                            $('.predikat').map(reset)
                        } else {

                            for (let index = 0; index < result.length; index++) {
                                const student_profile_detail_id = result[index].student_profile_detail_id.split(",");
                                const master_indikator_id = result[index].master_indikator_id.split(",");
                                const indikator = result[index].indikator.split(",");
                                const datanilai = result[index].nilai.split(",");



                                $("#add_studentprofile_id_"+result[index].murid_id).val(result[index].id);
                                for (let index2 = 0; index2 < datanilai.length; index2++) {
                                    console.log(student_profile_detail_id[index2]);
                                    $("#id_nilai_"+result[index].murid_id+"_"+master_indikator_id[index2]).val(student_profile_detail_id[index2]);
                                    $("#nilai_"+result[index].murid_id+"_"+master_indikator_id[index2]).val(datanilai[index2]).change();
                                }

                            }
                        }
                    },
                    error:function(result)
                    {
                        const reset = (idx, elem) => (elem.value = null)

                            $('.id_nilai_cbi').map(reset)
                            $('.predikat').map(reset)
                    }
                });
            } else {
                const reset = (idx, elem) => (elem.value = null)

                    $('.id_nilai_cbi').map(reset)
                    $('.predikat').map(reset)
            }
        }
    </script>
@endsection
