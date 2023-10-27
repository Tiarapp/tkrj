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

    .jatidiri img {
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
            <div class="canvas">
                <div class="judul" style="padding: 10px">
                    <h3><b>PRESCHOOL RAUDLATUL JANNAH</b></h3>
                    <h3><b>LAPORAN CAPAIAN PERKEMBANGAN ANAK</b></h3>
                    <h3><b>MID SEMESTER</b></h3>
                    <br>
                    <div class="row" style="margin-bottom: 30px">
                        <div class="col-8">
                            <div class="row">
                                <label class="col-4" style="text-align: left; padding-right: 0px"><b>NAMA ANAK DIDIK
                                    </b></label>
                                <label class="col-6" style="text-align: left; padding-right: 0px"><b>:
                                        {{ $murid->nama }}</b></label>
                            </div>
                            <div class="row">
                                <label class="col-4" style="text-align: left; "><b>KELAS/NO DIDIK</b></label>
                                <label class="col-6" style="text-align: left"><b>: {{ $murid->kelas }} /
                                        {{ $murid->nis }}</b></label>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="row">
                                <label class="col-5" style="text-align: left; padding: 0px"><b>TAHUN AJARAN</b></label>
                                <label class="col-4" style="text-align: left; padding-right: 0px"><b>:
                                        {{ $murid->tahunajaran }}</b></label>
                            </div>
                            <div class="row">
                                <label class="col-5" style="text-align: left; padding: 0px"><b>SEMESTER</b></label>
                                <label class="col-4" style="text-align: left; padding-right: 0px"><b>:
                                        {{ $periode->semester }}</b></label>
                            </div>
                        </div>
                    </div>



                    @if ($rekap_akademik == '')
                        <h4>SILAHKAN SIMPAN DATA NARASI TERLEBIH DAHULU (Masuk ke menu narasi)</h4>
                    @else
                        {{-- HALAMAN 1 --}}
                        @foreach ($data_ as $cp => $data)
                            <div class="narasi">
                                <div class="jatidiri" style="border: 1px solid black;">
                                    <h3>{{ $cp }}</h3>
                                    @php
                                        $narasi=str_replace(".,",",",$data['narasi']);
                                    @endphp
                                    <p style ="text-align: justify; text-size: 10px; text-indent: 0.4in;">
                                        {{str_replace(". ,",",",$narasi)}}
                                    </p>
                                    <p style ="text-align: justify; text-size: 10px; text-indent: 0.4in;">
                                        {{ $data['saran_tema'] }}</p>
                                    <p style ="text-align: justify; text-size: 10px; text-indent: 0.4in;">
                                        {{ $data['saran_ortu'] }}</p>
                                </div>
                            </div>

                            @if ($cp == 'Nilai Agama dan Budi Pekerti')
                                @php
                                    break;
                                @endphp

                            @endif
                        @endforeach
                        <div class="pagebreak"></div>
                        <br><br>

                        {{-- Halaman 2 --}}
                            <div class="judul" style="padding: 10px">

                                <h3><b>PRESCHOOL RAUDLATUL JANNAH</b></h3>
                                <h3><b>LAPORAN CAPAIAN PERKEMBANGAN ANAK</b></h3>
                                <h3><b>MID SEMESTER</b></h3>
                                <br>

                                <div class="row" style="margin-bottom: 30px">
                                    <div class="col-8">
                                        <div class="row">
                                            <label class="col-4" style="text-align: left; padding-right: 0px"><b>NAMA ANAK
                                                    DIDIK </b></label>
                                            <label class="col-6" style="text-align: left; padding-right: 0px">
                                                <b>: {{ $murid->nama }}</b>
                                            </label>
                                        </div>
                                        <div class="row">
                                            <label class="col-4" style="text-align: left; "><b>KELAS/NO DIDIK</b></label>
                                            <label class="col-6" style="text-align: left">
                                                <b>: {{ $murid->kelas }} / {{ $murid->nis }}</b>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="row">
                                            <label class="col-5" style="text-align: left; padding: 0px"><b>TAHUN
                                                    AJARAN</b></label>
                                            <label class="col-4" style="text-align: left; padding-right: 0px">
                                                <b>:  {{ $murid->tahunajaran }}</b>
                                            </label>
                                        </div>
                                        <div class="row">
                                            <label class="col-5"
                                                style="text-align: left; padding: 0px"><b>SEMESTER</b></label>
                                            <label class="col-4" style="text-align: left; padding-right: 0px">
                                                <b>: {{ $periode->semester }}</b>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @foreach ($data_ as $cp => $data)

                                @if ($cp=="Nilai Agama dan Budi Pekerti")
                                    @php
                                        continue;
                                    @endphp
                                @endif

                                <div class="narasi">
                                    <div class="jatidiri" style="border: 1px solid black;">
                                        <h3>{{ $cp }}</h3>

                                        <p style ="text-align: justify; text-size: 10px; text-indent: 0.4in;">
                                            {{str_replace(".,",".",$data['narasi'])}}</p>

                                        <p style ="text-align: justify; text-size: 10px; text-indent: 0.4in;">
                                            {{ $data['saran_tema'] }}</p>
                                        <p style ="text-align: justify; text-size: 10px; text-indent: 0.4in;">
                                            {{ $data['saran_ortu'] }}</p>
                                    </div>
                                </div>

                                @if ($cp == 'Jati Diri')
                                    @php
                                        break;
                                    @endphp

                                @endif
                            @endforeach
                        <div class="pagebreak"></div>
                        <br><br>

                        {{-- Halaman 3 --}}
                            <div class="judul" style="padding: 10px">

                                <h3><b>PRESCHOOL RAUDLATUL JANNAH</b></h3>
                                <h3><b>LAPORAN CAPAIAN PERKEMBANGAN ANAK</b></h3>
                                <h3><b>MID SEMESTER</b></h3>
                                <br>

                                <div class="row" style="margin-bottom: 30px">
                                    <div class="col-8">
                                        <div class="row">
                                            <label class="col-4" style="text-align: left; padding-right: 0px"><b>NAMA ANAK
                                                    DIDIK </b></label>
                                            <label class="col-6" style="text-align: left; padding-right: 0px">
                                                <b>: {{ $murid->nama }}</b>
                                            </label>
                                        </div>
                                        <div class="row">
                                            <label class="col-4" style="text-align: left; "><b>KELAS/NO DIDIK</b></label>
                                            <label class="col-6" style="text-align: left">
                                                <b>: {{ $murid->kelas }} / {{ $murid->nis }}</b>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="row">
                                            <label class="col-5" style="text-align: left; padding: 0px"><b>TAHUN
                                                    AJARAN</b></label>
                                            <label class="col-4" style="text-align: left; padding-right: 0px">
                                                <b>:  {{ $murid->tahunajaran }}</b>
                                            </label>
                                        </div>
                                        <div class="row">
                                            <label class="col-5"
                                                style="text-align: left; padding: 0px"><b>SEMESTER</b></label>
                                            <label class="col-4" style="text-align: left; padding-right: 0px">
                                                <b>: {{ $periode->semester }}</b>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @foreach ($data_ as $cp => $data)

                                @if ($cp=="Nilai Agama dan Budi Pekerti")
                                    @php
                                        continue;
                                    @endphp
                                @elseif ($cp=="Jati Diri")
                                    @php
                                        continue;
                                    @endphp
                                @endif

                                <div class="narasi">
                                    <div class="jatidiri" style="border: 1px solid black;">
                                        <h3>{{ $cp }}</h3>

                                        <p style ="text-align: justify; text-size: 10px; text-indent: 0.4in;">
                                            {{str_replace(".,",".",$data['narasi'])}}</p>

                                        {{-- NARASI BALOK --}}
                                            <p style ="text-align: justify; text-size: 10px; text-indent: 0.4in;">
                                                {{ str_replace(".,",".", $data_['Balok']['narasi']) }}
                                            </p>

                                            @if (!($murid->jenjang=="PG"||$murid->jenjang=="TC"))
                                            {{-- @else --}}
                                                {{-- NARASI MULTIMEDIA --}}
                                                    <p style ="text-align: justify; text-size: 10px; text-indent: 0.4in;">
                                                        {{ str_replace(". ,",".", $data_['Multimedia']['narasi']) }}
                                                    </p>
                                            @endif

                                        <p style ="text-align: justify; text-size: 10px; text-indent: 0.4in;">
                                            {{ $data['saran_tema'] }}</p>
                                        <p style ="text-align: justify; text-size: 10px; text-indent: 0.4in;">
                                            {{ $data['saran_ortu'] }}</p>
                                    </div>
                                </div>

                                @if ($cp == 'Dasar-dasar Literasi, Matematika, Sains, Teknologi, Rekayasa, dan Seni')
                                    @php
                                        break;
                                    @endphp
                                @endif
                            @endforeach
                    @endif
                </div>
            </div>
        </div>
    </div>
</section>
<!--/ Complex Headers -->
