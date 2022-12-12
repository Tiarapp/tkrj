@section('vendor-style')
    {{-- vendor css files TABLE--}}
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/dataTables.bootstrap5.min.css')) }}">
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/responsive.bootstrap5.min.css')) }}">
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/buttons.bootstrap5.min.css')) }}">
        <link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/rowGroup.bootstrap5.min.css')) }}">
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet"> 
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

    td {
        text-align: left;
        color: black;
        border: 1px solid black;
    }
    
    .std-profile {
        margin-bottom: 20px;
    }

    .std-profile th{
        border: 1px solid black;
        color: black;
    }

    .tumbuh-kembang th{
        border: 1px solid black;
        color: black;
    }

    .indikator {
        border: 1px solid black;
        font-weight: 700;
    }

    .nilai th {
        border: 1px solid black;
        font-weight: 700;
    }

    .value {
        text-align: center;
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
                    <h3><b>LAPORAN PERKEMBANGAN ANAK</b></h3>
                    <h3><b>AKHIR SEMESTER</b></h3>
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
                    <div class="row std-profile" style="padding: 10px">
                        A. Student Profile
                        <table style="border: 2px solid black; text-align: center; margin-top: 10px;">
                            <tr>
                                <th colspan="1" rowspan="2">PROFILE</th>
                                <th colspan="4">Category</th>
                            </tr>
                            <tr>
                                <th colspan="1">Very Good</th>
                                <th colspan="1">Good</th>
                                <th colspan="1">Satisfactory</th>
                                <th colspan="1">Need Improve</th>
                            </tr>

                            @foreach ($spdetail as $sp)    
                            <tr>
                                <td colspan="1" rowspan="1">{{ $sp->indikator }}</td>
                                <td colspan="1" rowspan="1">
                                    @if ($sp->nilai == "vg")
                                        {{-- <i class="fa-sharp fa-solid fa-circle-check"></i> --}}
                                        <center>cek</center>
                                    @endif
                                </td>
                                <td colspan="1" rowspan="1">
                                    @if ($sp->nilai == "g")
                                        cek
                                    @endif
                                </td>
                                <td colspan="1" rowspan="1">
                                    @if ($sp->nilai == "s")
                                        cek
                                    @endif
                                </td>
                                <td colspan="1" rowspan="1">
                                    @if ($sp->nilai == "ni")
                                        cek
                                    @endif
                                </td>
                            </tr>
                                @endforeach
                        </table>
                    </div>
                    <div class="row tumbuh-kembang" style="padding: 10px">
                        B. Tumbuh Kembang Anak
                        <table style="border: 2px solid rgb(125, 103, 103); text-align: center; margin-top: 10px;">
                            <tr>
                                <th colspan="3" rowspan="1">Indikator Pertumbuhan</th>
                                <th colspan="2" rowspan="1">Capaian Pertumbuhan</th>
                            </tr>
                            <tr>
                                <td colspan="3" rowspan="1">A. Kesehatan</td>
                                <td colspan="2" rowspan="1"></td>
                            </tr>
                            {{-- Foreach indikator kesehatan --}}
                            @foreach ($kesehatan as $k)
                            <tr style="padding-left: 10px">
                                <td colspan="3" rowspan="1" style="padding-left: 10px">{{ $k->master_kategori }}</td>
                                <td colspan="2" rowspan="1">{{ $k->nilai }}</td>
                            </tr>
                            @endforeach
                            <tr>
                                <td colspan="3" rowspan="1">A. Kebersihan</td>
                                <td colspan="2" rowspan="1"></td>
                            </tr>
                            {{-- Foreach indikator Kebersihan --}}
                            @foreach ($kebersihan as $k)
                            <tr style="padding-left: 10px">
                                <td colspan="3" rowspan="1" style="padding-left: 10px">{{ $k->master_kategori }}</td>
                                <td colspan="2" rowspan="1">{{ $k->nilai }}</td>
                            </tr>
                            @endforeach
                        </table>
                    </div>

                    <div class="pagebreak"></div>
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

                    <div class="row" style="margin-bottom: 20px; padding: 10px">
                        <div class="col-3 indikator">
                            BB : Belum Berkembang
                        </div>
                        <div class="col-3 indikator">
                            MB: Mulai Berkembang
                        </div>
                        <div class="col-3 indikator">
                            BSH: Berkembang Sesuai Harapan
                        </div>
                        <div class="col-3 indikator">
                            BSB: Berkembang Sangat Baik
                        </div>
                    </div>

                    
                    <div class="row nilai" style="text-align: center; padding: 10px">           
                        <table style="border: 1px solid black">
                            <tr>
                                <th>AREAS OF DEVELOPMENT</th>
                                <th>DEVELOPMENT ACHIEVEMENT</th>
                                <th>INDICATORS</th>
                                <th style="text-align: center">VALUE</th>
                            </tr>

                            @php
                                $rowid = 0;
                                $rowspan = 0;
                            @endphp

                            {{-- Nilai Ekstra --}}
                            @foreach($ekstra as $key => $data)
                            @php
                            $rowid += 1
                            @endphp
                            <tr>
                            @if ($key == 0 || $rowspan == $rowid)
                                @php
                                    $rowid = 0;
                                    $rowspan = count($ekstra);
                                @endphp
                                <td rowspan="{{ $rowspan }}">{{$data->area->nama_area}}</td>
                                <td rowspan="{{ $rowspan }}">{{$data->devac->nama_achievment}}</td>
                            @endif
                            <td>{{$data->indicators}}</td>
                            <td class="value">{{$data->nilai}}</td>
                            </tr>
                            @endforeach

                            {{-- Nilai Ibadah --}}
                            @foreach($ibadah as $key => $data)
                            @php
                            $rowid += 1
                            @endphp
                            <tr>
                            @if ($key == 0 || $rowspan == $rowid)
                                @php
                                    $rowid = 0;
                                    $rowspan = count($ibadah);
                                @endphp
                                <td rowspan="{{ $rowspan }}">{{$data->area->nama_area}}</td>
                                <td rowspan="{{ $rowspan }}">{{$data->devac->nama_achievment}}</td>
                            @endif
                            <td>{{$data->indicators}}</td>
                            <td class="value">{{$data->nilai}}</td>
                            </tr>
                            @endforeach

                            
                            {{-- Nilai Doa Harian --}}
                            @foreach($doa as $key => $data)
                            @php
                            $rowid += 1
                            @endphp
                            <tr>
                            @if ($key == 0 || $rowspan == $rowid)
                                @php
                                    $rowid = 0;
                                    $rowspan = count($doa);
                                @endphp
                                <td rowspan="{{ $rowspan }}">{{$data->area->nama_area}}</td>
                                <td rowspan="{{ $rowspan }}">{{$data->devac->nama_achievment}}</td>
                            @endif
                            <td>{{$data->indicators}}</td>
                            <td class="value">{{$data->nilai}}</td>
                            </tr>
                            @endforeach

                            {{-- Nilai Hadist --}}
                            @foreach($hadist as $key => $data)
                            @php
                            $rowid += 1
                            @endphp
                            <tr>
                            @if ($key == 0 || $rowspan == $rowid)
                                @php
                                    $rowid = 0;
                                    $rowspan = count($hadist);
                                @endphp
                                <td rowspan="{{ $rowspan }}">{{$data->area->nama_area}}</td>
                                <td rowspan="{{ $rowspan }}">{{$data->devac->nama_achievment}}</td>
                            @endif
                            <td>{{$data->indicators}}</td>
                            <td class="value">{{$data->nilai}}</td>
                            </tr>
                            @endforeach

                            {{-- Nilai CBI --}}
                            @foreach($cbi as $key => $data)
                            @php
                            $rowid += 1
                            @endphp
                            <tr>
                            @if ($key == 0 || $rowspan == $rowid)
                                @php
                                    $rowid = 0;
                                    $rowspan = count($cbi);
                                @endphp
                                <td rowspan="{{ $rowspan }}">{{$data->area->nama_area}}</td>
                                <td rowspan="{{ $rowspan }}">{{$data->devac->nama_achievment}}</td>
                            @endif
                            <td>{{$data->indicators}}</td>
                            <td class="value">{{$data->nilai}}</td>
                            </tr>
                            @endforeach
                        </table>
                    </div>

                    <div class="row" style="padding: 10px">
                        <div class="col-6" style="text-align: left">
                            <b>Interview Request: Yes / No </b>
                        </div>
                        <div class="col-6" style="text-align: right">
                            <b>Ijin: 0 hari, Sakit: 6 hari, Alpa: 0 hari</b>
                        </div>
                        <br>
                        <br>
                        <div class="col-6" style="text-align: left">
                            <b>Sidoarjo, 17 Desember 2021</b>
                        </div>
                    </div>

                    <div class="row" style="padding: 10px">
                        <div class="title" style="border: 1px solid black">
                            <div class="row">
                                <div class="col-4" style="border: 1px solid black">
                                    PRINCIPAL
                                </div>
                                <div class="col-4" style="border: 1px solid black">
                                    PARENT	
                                </div>
                                <div class="col-4" style="border: 1px solid black">
                                    HOMEROOM TEACHER
                                </div>
                            </div>
                        </div>
                        <div class="sign" >
                            <div class="row">
                                <div class="col-4" style="height: 120px; border: 1px solid black">
                                    
                                </div>
                                <div class="col-4" style="height: 120px; border: 1px solid black">
                                    	
                                </div>
                                <div class="col-4" style="height: 120px; border: 1px solid black">
                                     
                                </div>
                            </div>
                        </div>
                        <div class="name" style="border: 1px solid black">
                            <div class="row">
                                <div class="col-4" style="border: 1px solid black">
                                    Siti Isnawati, S.Pd.I. S.Pd
                                </div>
                                <div class="col-4" style="border: 1px solid black">
                                    PARENT	
                                </div>
                                <div class="col-4" style="border: 1px solid black">
                                    {{ Auth::user()->nama }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="pagebreak">

                    </div>

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

                    <div class="row nilai" style="text-align: center; padding: 10px">           
                        <table style="border: 1px solid black">
                            <tr>
                                <th>AREAS OF DEVELOPMENT</th>
                                <th>DEVELOPMENT ACHIEVEMENT</th>
                                <th>INDICATORS</th>
                                <th style="text-align: center">VALUE</th>
                            </tr>
                            {{-- Nilai Tilawah --}}
                            @foreach($tilawah as $key => $data)
                            @php
                            $rowid += 1
                            @endphp
                            <tr>
                            @if ($key == 0 || $rowspan == $rowid)
                                @php
                                    $rowid = 0;
                                    $rowspan = count($tilawah);
                                @endphp
                                <td rowspan="{{ $rowspan }}">{{$data->area->nama_area}}</td>
                                <td rowspan="{{ $rowspan }}">{{$data->devac->nama_achievment}}</td>
                            @endif
                            <td>{{$data->indicators}}</td>
                            <td class="value">{{$data->nilai}}</td>
                            </tr>
                            @endforeach

                            {{-- Nilai Tahfidz --}}
                            @foreach($tahfidz as $key => $data)
                            @php
                            $rowid += 1
                            @endphp
                            <tr>
                            @if ($key == 0 || $rowspan == $rowid)
                                @php
                                    $rowid = 0;
                                    $rowspan = count($tahfidz);
                                @endphp
                                <td rowspan="{{ $rowspan }}">{{$data->area->nama_area}}</td>
                                <td rowspan="{{ $rowspan }}">{{$data->devac->nama_achievment}}</td>
                            @endif
                            <td>{{$data->indicators}}</td>
                            <td class="value">{{$data->nilai}}</td>
                            </tr>
                            @endforeach
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--/ Complex Headers -->
