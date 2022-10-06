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

<head>

<link rel="stylesheet" href="{{ asset(mix('css/core.css')) }}" />
<link rel="stylesheet" href="{{ asset(mix('css/base/themes/dark-layout.css')) }}" />
<link rel="stylesheet" href="{{ asset(mix('css/base/themes/bordered-layout.css')) }}" />
<link rel="stylesheet" href="{{ asset(mix('css/base/themes/semi-dark-layout.css')) }}" />

</head>

<style>
    .judul {
        text-align: center;
        width: 800px;
        margin: auto;
    }

    .judul label {
        font-family: 'Times New Roman', Times, serif;
        text-decoration: content: '\f032';
    }

    .raport {
        text-align: left;
    }

    .jatidiri {
        border-bottom: 1px solid black;
        padding: 10px;
    }

    .jatidiri img{
        height: 150px;
        width: 200px;
    }


    .narasi {
        height: auto;
        border: 1px solid black;
    }

    @media print {
        .pagebreak {
            page-break-before: always;
        }
    }
</style>

<!-- Complex Headers -->
<section id="">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="judul" style="padding: 10px">
                    <h3><b>PRESCHOOL RAUDLATUL JANNAH</b></h3>
                    <h3><b>LAPORAN CAPAIAN PERKEMBANGAN ANAK</b></h3>
                    <h3><b>MID SEMESTER</b></h3>
                    <br>
                    <div class="row" style="margin-bottom: 30px">
                        <div class="col-7">
                            <div class="row">
                                <label class="col-4" style="text-align: left; padding-right: 0px"><b>NAMA ANAK DIDIK </b></label>
                                <label class="col-6" style="text-align: left; padding-right: 0px"><b>: {{ $murid->nama }}</b></label>
                            </div>
                            <div class="row">
                                <label class="col-4" style="text-align: left; "><b>KELAS/NO DIDIK</b></label>
                                <label class="col-6" style="text-align: left"><b>: {{ $murid->kelas }} / {{ $murid->nis }}</b></label>
                            </div>
                        </div>
                        <div class="col-5">
                            <div class="row">
                                <label class="col-5" style="text-align: left; padding: 0px"><b>TAHUN AJARAN</b></label>
                                <label class="col-4" style="text-align: left; padding-right: 0px"><b>: {{ $murid->tahunajaran }}</b></label>
                            </div>
                            <div class="row">
                                <label class="col-5" style="text-align: left; padding: 0px"><b>SEMESTER</b></label>
                                <label class="col-4" style="text-align: left; padding-right: 0px"><b>: {{ $periode->semester}}</b></label>
                            </div>
                        </div>
                    </div>



                    @if ($rekap_akademik == "")
                        <h4>SILAHKAN SIMPAN DATA NARASI TERLEBIH DAHULU (Masuk ke menu narasi)</h4>
                    @else
                        <div class="raport">
                            <label for="" style="text-align: left"><b>CAPAIAN PERKEMBANGAN ANAK</b></label>
                        </div>
                        
                        @foreach (explode('||', $rekap_akademik->cp) as $key => $cp)
                            <div class="narasi">
                                <div class="jatidiri">
                                    <h3>{{$cp}}</h3>
                                        @foreach (explode('||', $rekap_akademik->narasi) as $key2 => $narasi)
                                            @if ($key==$key2)
                                                <p>{{$narasi}}</p>
                                            @endif
                                        @endforeach
                                </div>
                            </div>
                        @endforeach
                    @endif


                </div>
            </div>
        </div>
    </div>
</section>
<!--/ Complex Headers -->
