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

@section('title', 'Input Ibadah')

@section('content')
<!-- Complex Headers -->
<section id="complex-header-datatable">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="row">
                    <div class="col-8">
                        <div class="card-header">
                            <h4 class="card-title">Input Nilai Jenjang: {{$detail_pengajar->jenjang}} / Kelas: {{$detail_pengajar->kelas}}</h4>
                        </div>
                    </div>
                    <div class="col-4" style="margin-top: 20px">
                        <select class="select2-size-sm form-select" name="ibadah_id" id="ibadah_id">
                            <option selected disabled>Pilih Ibadah</option>
                            @foreach ($ibadah as $i)
                                <option value="{{$i->id}}">{{$i->indicators}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="card-datatable">
                    <form id="jquery-val-form" action="{{route('nilai.ibadah.add')}}" method="post" enctype="multipart/form-data">
                        {{csrf_field()}}

                        {{-- ID --}}
                            <input type="hidden" name="id_pengajar" id="id_pengajar" value="{{$detail_pengajar->id}}">
                            <input type="hidden" name="id_indicators" id="id_indicators">

                        <table id="example" class="dt-multilingual table">
                            <thead>
                                <tr>
                                    <th rowspan="3" style="text-align: center; width: 40px">Absen</th>
                                    <th rowspan="3" style="text-align: center; ">Nama</th>
                                    <th colspan="5" style="text-align: center">Nilai</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($murid as $m)
                                    <tr>
                                        <td>{{$m->absen}}</td>
                                        <td style="width: 400px">{{$m->nama}}</td>
                                        <td>
                                            <select class="select2-size-sm form-select predikat" name="predikat_id[{{$m->id}}]" id="predikat_id_{{$m->id}}">
                                                <option value="" selected readonly></option>
                                                @foreach ($predikat as $p)
                                                    <option value="{{$p->kode}}">{{$p->kode}}</option>
                                                @endforeach
                                            </select>
                                        </td>
                                        {{-- ID MURID --}}
                                            <input type="hidden" name="add_murid_id[{{$m->id}}]" value="{{$m->id}}">
                                        {{-- ID NILAI --}}
                                            <input class="id_nilai_ibadah" type="hidden" name="id_nilai_ibadah[{{$m->id}}]" id="id_nilai_ibadah_{{$m->id}}">
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
        // $('#example').DataTable({
        //     "searching": false
        // });

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

    // SELECT INDIKATOR IBADAH
        $('#ibadah_id').change(function () {
            var id_indicators = document.getElementById("ibadah_id").value;
            var id_pengajar= document.getElementById("id_pengajar").value;

            data_edit(id_indicators, id_pengajar)

            document.getElementById("id_indicators").value=id_indicators;
        });

    // RESET TABEL
        const data_edit = function(id_indicators, id_pengajar){
            if (id_indicators, id_pengajar) {
                $.ajax({
                    type: "GET",
                    url: "/Nilai/Ibadah/edit_nilai?id_indicators=" +id_indicators+"&id_pengajar="+id_pengajar,
                    dataType: 'JSON',
                    success:function(result){

                        if (result.length == 0) {

                            const reset = (idx, elem) => (elem.value = null)

                            $('.id_nilai_ibadah').map(reset)
                            $('.predikat').val("").change();
                        } else {
                            for (let index = 0; index < result.length; index++) {
                                $("#id_nilai_ibadah_"+result[index].murid_id).val(result[index].id);
                                $("#predikat_id_"+result[index].murid_id).val(result[index].nilai).change();
                            }
                        }
                    },
                    error:function(result)
                    {
                        const reset = (idx, elem) => (elem.value = null)

                            $('.id_nilai_ibadah').map(reset).change()
                            $('.predikat').val("").change();
                    }
                });
            } else {
                const reset = (idx, elem) => (elem.value = null)

                    $('.id_nilai_ibadah').map(reset).change()
                    $('.predikat').val("").change();
            }
        }

</script>
@endsection
