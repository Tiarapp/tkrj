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

@section('title', 'Input Nilai Proyek')

@section('content')
<!-- Complex Headers -->
<section id="complex-header-datatable">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="row">
                    <div class="col-4">
                        <div class="card-header">
                            <h4 class="card-title">Input Nilai Proyek</h4>
                        </div>
                    </div>
                    <div class="col-4" style="margin-top: 20px">
                        <select class="select2-size-sm form-select" name="kelas_id" id="kelas_id" onchange="murid_kelas()">
                            <option selected disabled>Pilih Kelas</option>
                            @foreach ($walikelas as $w)
                                <option value="{{$w->kelas_id}}">{{$w->kelas}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-4" style="margin-top: 20px">
                        <select class="select2-size-sm form-select" name="tema_proyek_id" id="tema_proyek_id" onchange="get_data_edit_nilai()">
                            <option selected disabled>Pilih Tema Proyek</option>
                        </select>
                    </div>
                </div>

                <div class="card-datatable">
                    <form id="jquery-val-form" action="{{route('walikelas.proyek.nilaiproyek.add')}}" method="post" enctype="multipart/form-data">
                        {{csrf_field()}}

                        <input type="hidden" name="add_tema_proyek" id="add_tema_proyek">
                        <table id="example" class="dt-multilingual table">
                            <thead>
                                <tr>
                                    <th style="text-align: center; width: 40px">Absen</th>
                                    <th style="text-align: center; ">Nama</th>
                                    <th style="text-align: center">Catatan</th>
                                </tr>
                            </thead>
                            <tbody>

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

    function murid_kelas($id_kelas) {
        var id_kelas = document.getElementById("kelas_id").value;
        tema_proyek_kelas(id_kelas)
        data_murid_kelas(id_kelas)
    }
    function get_data_edit_nilai() {
        var id_kelas = document.getElementById("kelas_id").value;
        var id_tema = document.getElementById("tema_proyek_id").value;
        document.getElementById("add_tema_proyek").value=id_tema;
        edit_nilai(id_kelas,id_tema)
    }

    const data_murid_kelas = function(id_kelas){
        if (id_kelas) {
            $('#example').DataTable({
                bDestroy: true,
                ajax: "/Walikelas/Proyek/NilaiProyek/data_murid_kelas?id_kelas="+id_kelas,
                "searching" : false,
                "paging"    : false,
                columns: [
                    { data: 'absen'},
                    { data: 'nama'},
                    {data: null,
                        render: function(data, type, row) {
                            const siswa_id = data.id ?? ''
                            return '<input class="input" type="hidden" name="id_nilai_proyek['+siswa_id+']" id="id_nilai_proyek_'+siswa_id+'"><textarea class="form-control input" name="catatan['+siswa_id+']" id="catatan_'+siswa_id+'" rows="3"></textarea>';
                        }
                    }
                ]
            });
        } else {
            $('#example').DataTable({
                bDestroy: true
            });
        }
    }

    const tema_proyek_kelas = function(id_kelas){
        $('#tema_proyek_id option').each(function() {
            if ( $(this).val() !== '-' ) {
                $(this).remove();
            }
        });

        $.ajax({
            method: 'GET',
            url: "/Walikelas/Proyek/NilaiProyek/tema_proyek_kelas?id_kelas="+id_kelas,
            dataType: 'JSON',
            success: function(data){
                const items = data.map((items) => ({ id: items.id, tema_proyek: items.tema_proyek}))
                $('#tema_proyek_id').append($('<option>', {
                    value: "Pilih Tema Proyek",
                    text : "Pilih Tema Proyek",
                    selected: true,
                    disabled: true
                }));

                $.each(items, function (i, item) {
                    $('#tema_proyek_id').append($('<option>', {
                        value: item.id,
                        text : item.tema_proyek
                    }));
                });
            },
            error: err => console.log(err)
        });
    }

    const reset = (idx, elem) => (elem.value = null)
    //EDIT NILAI
        const edit_nilai = function(id_kelas,id_tema){
            if (id_kelas,id_tema) {
                $.ajax({
                    type: "GET",
                    url: "/Walikelas/Proyek/NilaiProyek/edit_nilai?id_kelas="+id_kelas+"&id_tema="+id_tema,
                    dataType: 'JSON',
                    success:function(result){
                        $('.input').map(reset)

                        for (let index = 0; index < result.length; index++) {
                            $("#id_nilai_proyek_"+result[index].murid_id).val(result[index].id);
                            $("#catatan_"+result[index].murid_id).val(result[index].catatan_proyek);
                        }
                    },
                    error:function(result)
                    {
                        $('.input').map(reset)
                    }
                });
            } else {
                $('.input').map(reset)
            }
        }

</script>
@endsection
