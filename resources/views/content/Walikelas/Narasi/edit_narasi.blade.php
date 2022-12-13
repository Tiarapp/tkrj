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
@endsection

@section('page-style')

    {{-- Page Css files --}}
    <link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/form-validation.css')) }}">
    <link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/pickers/form-flat-pickr.css')) }}">

    <link rel="stylesheet" href="{{ asset(mix('css/base/plugins/extensions/ext-component-toastr.css')) }}">
@endsection

@section('title', 'Edit Narasi Siswa')

@section('content')
    <!-- Complex Headers -->
    <section id="complex-header-datatable">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="row">
                        <div class="col-8">
                            <div class="card-header">
                                <h4 class="card-title">Nama: {{$murid->nama}} / Kelas: {{$murid->kelas}}</h4>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12">
                                <div class="mb-1">
                                    <form id="jquery-val-form" action="{{ route('walikelas.narasi.add') }}" method="post" enctype="multipart/form-data">
                                        {{ csrf_field() }}

                                        {{-- ID --}}
                                        <input type="hidden" name="id_murid" id="id_murid" value="{{ $murid->id }}">
                                        <input type="hidden" name="id_rekap_akademik" id="id_rekap_akademik">

                                        @php $i="0px"; $key=0; @endphp
                                        @foreach ($nilai_akademik as $na)

                                            <input type="hidden" value="{{$na->cp}}" name="cp[]">
                                            <h6 class="card-title" id="cp_{{$key}}" style="margin-top: {{$i}}">
                                                {{$na->cp}}
                                                <button type="button" class="btn btn-icon btn-success" data-bs-toggle="modal" data-bs-target="#inlineForm{{$key}}">
                                                    <i data-feather='image'></i>
                                                </button>
                                            </h6>
                                            <textarea class="form-control narasi" name="narasi[{{$key}}]" id="narasi_{{$key}}" rows="3">Alhamdulillah, {{$murid->nama}} sudah dapat {{$na->tk}}</textarea>
                                            <br>
                                            <div class="row">
                                                <div class="col-6">
                                                    {{-- INPUT SARAN TEMA SELANJUTNYA --}}
                                                    <label class="card-title" id="cp_{{$key}}">Saran Tema Selanjutnya</label>
                                                    <textarea class="form-control narasi" name="saran_tema[{{$key}}]" id="saran_tema_{{$key}}" rows="3"></textarea>
                                                </div>
                                                <div class="col-6">
                                                    {{-- INPUT SARAN ORTU di RUMAH --}}
                                                    <label class="card-title" id="cp_{{$key}}">Saran Untuk Ortu di Rumah</label>
                                                    <textarea class="form-control narasi" name="saran_ortu[{{$key}}]" id="saran_ortu_{{$key}}" rows="3"></textarea>
                                                </div>
                                            </div>

                                            @include('content.Walikelas.Narasi.add_foto')
                                            @php $i="30px"; $key++;@endphp

                                        @endforeach
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-primary me-1">Simpan</button>
                                            <button type="reset" class="btn btn-outline-secondary">Reset</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
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

            var id_murid=document.getElementById("id_murid").value;
            edit_rekap_akademik(id_murid);

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
        });

        const edit_rekap_akademik = function(id_murid){
            if (id_murid) {
                $.ajax({
                    type: "GET",
                    url: "/Walikelas/Narasi/update_narasi?id_murid=" +id_murid,
                    dataType: 'JSON',
                    success:function(result){

                        $("#id_rekap_akademik").val(result.id);

                        const cp = result.cp.split("||");
                        for (let index = 0; index < cp.length; index++) {
                            $("#cp_"+index).val(cp[index]);
                        }

                        const narasi = result.narasi.split("||");
                        for (let index = 0; index < narasi.length; index++) {
                            $("#narasi_"+index).val(narasi[index]);
                        }

                        const saran_tema = result.saran_tema.split("||");
                        for (let index = 0; index < saran_tema.length; index++) {
                            $("#saran_tema_"+index).val(saran_tema[index]);
                        }

                        const saran_ortu = result.saran_ortu.split("||");
                        for (let index = 0; index < saran_ortu.length; index++) {
                            $("#saran_ortu_"+index).val(saran_ortu[index]);
                        }

                    },
                    error:function(result)
                    {

                    }
                });
            } else {
                const reset = (idx, elem) => (elem.value = null)

                $('.narasi').map(reset)
                $('#rekap_akademik').map(reset)
            }
        }
    </script>
@endsection
