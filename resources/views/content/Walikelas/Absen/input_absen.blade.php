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

@section('title', 'Input Absensi')

@section('content')
<!-- Complex Headers -->
<section id="complex-header-datatable">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="row">
                    <div class="col-8">
                        <div class="card-header">
                            <h4 class="card-title">Input Absensi Kelas: {{$walikelas->kelas}}</h4>
                        </div>
                    </div>
                </div>

                <div class="card-datatable">
                    <form id="jquery-val-form" action="{{route('walikelas.absen.add')}}" method="post" enctype="multipart/form-data">
                        {{csrf_field()}}

                        {{-- ID --}}
                            <input type="hidden" name="id_walikelas" id="id_walikelas" value="{{$walikelas->id}}">

                        <table id="example" class="dt-multilingual table">
                            <thead>
                                <tr>
                                    <th style="text-align: center; width: 40px">Absen</th>
                                    <th style="text-align: center; ">Nama</th>
                                    <th style="text-align: center">Ijin</th>
                                    <th style="text-align: center">Sakit</th>
                                    <th style="text-align: center">Alpha</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($murid as $m)
                                    <tr>
                                        <td>{{$m->absen}}</td>
                                        <td style="width: 400px">{{$m->nama}}</td>
                                        <td>
                                            <input type="text" class="form-control ijin" name="ijin[{{$m->id}}]" id="ijin_{{$m->id}}">
                                        </td>
                                        <td>
                                            <input type="text" class="form-control sakit" name="sakit[{{$m->id}}]" id="sakit_{{$m->id}}">
                                        </td>
                                        <td>
                                            <input type="text" class="form-control alpha" name="alpha[{{$m->id}}]" id="alpha_{{$m->id}}">
                                        </td>
                                        {{-- ID MURID --}}
                                            <input type="hidden" name="add_murid_id[{{$m->id}}]" value="{{$m->id}}">
                                        {{-- ID NILAI --}}
                                            <input class="id_absen" type="hidden" name="id_absen[{{$m->id}}]" id="id_absen_{{$m->id}}">
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

        var id_walikelas = document.getElementById("id_walikelas").value;
        data_edit(id_walikelas);

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

    // RESET TABEL
        const data_edit = function(id_walikelas){
            if (id_walikelas) {
                $.ajax({
                    type: "GET",
                    url: "/Walikelas/Absen/edit_absen?id_walikelas=" +id_walikelas,
                    dataType: 'JSON',
                    success:function(result){

                        if (result.length == 0) {

                            const reset = (idx, elem) => (elem.value = null)

                            $('.id_absen').map(reset)
                            $('.ijin').map(reset)
                            $('.sakit').map(reset)
                            $('.alpha').map(reset)
                        } else {
                            for (let index = 0; index < result.length; index++) {
                                $("#id_absen_"+result[index].murid_id).val(result[index].id);
                                $("#ijin_"+result[index].murid_id).val(result[index].ijin);
                                $("#sakit_"+result[index].murid_id).val(result[index].sakit);
                                $("#alpha_"+result[index].murid_id).val(result[index].alpha);
                            }
                        }
                    },
                    error:function(result)
                    {
                        const reset = (idx, elem) => (elem.value = null)

                        $('.id_absen').map(reset)
                        $('.ijin').map(reset)
                        $('.sakit').map(reset)
                        $('.alpha').map(reset)
                    }
                });
            } else {
                const reset = (idx, elem) => (elem.value = null)

                    $('.id_absen').map(reset)
                    $('.ijin').map(reset)
                    $('.sakit').map(reset)
                    $('.alpha').map(reset)
            }
        }

</script>
@endsection
