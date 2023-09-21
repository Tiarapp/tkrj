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

    img {
        width: 50px;
        height: 50px;
    }

    .judul {
        text-align: left;
        width: 800px;
    }

    .judul h3 {
        text-align: center;
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

    .isi {
        width: 100%;
        margin: 0px;
    }

    .isi td {
        width: auto;
        padding-top: 5px;
        font-size: 14px;
    }

    .ttd {
        text-align: right;
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
                    {{-- <img src="{{ asset('gambar/logo.png') }}" alt=""> --}}
                    <h3>BIODATA SISWA</h3>
                </div>
                <div class="isi">
                    <table style=" text-align: left; margin-top: 10px;line-height:20px">
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;">1</td>
                            <td colspan="1" style="padding: 0px 10px;">No. Induk Siswa</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                            <td colspan="1">{{ $siswa->nis }}</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;">2</td>
                            <td colspan="1" style="padding: 0px 10px;">Nama Siswa</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;"></td>
                            <td colspan="1" style="padding-left : 30px;">a. Lengkap</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                            <td colspan="1">{{ $siswa->nama }}</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;"></td>
                            <td colspan="1" style="padding-left : 30px;">b. Panggilan</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                            <td colspan="1">{{ $siswa->panggilan }}</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;">3</td>
                            <td colspan="1" style="padding: 0px 10px;">Jenis Kelamin</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                            <td colspan="1">{{ $siswa->jenis_kelamin }}</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;">4</td>
                            <td colspan="1" style="padding: 0px 10px;">Agama</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                            <td colspan="1">Islam</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;">5</td>
                            <td colspan="1" style="padding: 0px 10px;">Tempat/Tgl Lahir</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                            {{--<td colspan="1">{{ $siswa->tempat_lahir }}, {{ date_format(date_create($siswa->tanggal_lahir), "d F Y") }}</td>--}}
                            <td colspan="1">{{ $siswa->tempat_lahir }}, {{ $siswa->tanggal_lahir}}</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;">6</td>
                            <td colspan="1" style="padding: 0px 10px;">Anak Ke</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                            <td colspan="1">{{ $siswa->anak_ke }}</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;">7</td>
                            <td colspan="1" style="padding: 0px 10px;">Status Dalam Keluarga</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;">8</td>
                            <td colspan="1" style="padding: 0px 10px;">Alamat</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;"></td>
                            <td colspan="1" style="padding-left : 30px;">a. Siswa</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                            <td colspan="1">{{ ucwords($siswa->alamat) }}</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;"></td>
                            <td colspan="1" style="padding-left : 30px;">b. Orang Tua</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                            <td colspan="1">{{ ucwords($siswa->alamat) }}</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;"></td>
                            <td colspan="1" style="padding-left : 30px;">b. Wali</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                            <td colspan="1"></td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;">9</td>
                            <td colspan="1" style="padding: 0px 10px;">Diterima Di Sekolah ini</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;"></td>
                            <td colspan="1" style="padding-left : 30px;">a. Kelas</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;"></td>
                            <td colspan="1" style="padding-left : 30px;">b. Bulan</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;">10</td>
                            <td colspan="1" style="padding: 0px 10px;">Data Sekolah Asal</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;"></td>
                            <td colspan="1" style="padding-left : 30px;">a. Nama</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;"></td>
                            <td colspan="1" style="padding-left : 30px;">b. Status</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;"></td>
                            <td colspan="1" style="padding-left : 30px;">c. Alamat</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;"></td>
                            <td colspan="1" style="padding-left : 30px;">d. Penyelenggara</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;">11</td>
                            <td colspan="1" style="padding: 0px 10px;">Data Orang Tua</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;"></td>
                            <td colspan="1" style="padding-left : 30px;">a. Ayah</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;"></td>
                            <td colspan="1" style="padding-left : 50px;">a. Nama</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                            <td colspan="1">{{ $siswa->nama_bapak }}</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;"></td>
                            <td colspan="1" style="padding-left : 50px;">b. Pekerjaan</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                            <td colspan="1">{{ $siswa->pekerjaan_bapak }}</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;"></td>
                            <td colspan="1" style="padding-left : 30px;">b. Ibu</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;"></td>
                            <td colspan="1" style="padding-left : 50px;">a. Nama</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                            <td colspan="1">{{ $siswa->nama_ibu }}</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;"></td>
                            <td colspan="1" style="padding-left : 50px;">b. Pekerjaan</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                            <td colspan="1">{{ $siswa->pekerjaan_ibu }}</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;"></td>
                            <td colspan="1" style="padding-left : 30px;">c. Wali</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;"></td>
                            <td colspan="1" style="padding-left : 50px;">a. Nama</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                        </tr>
                        <tr>
                            <td colspan="1" style="padding: 0px 40px;"></td>
                            <td colspan="1" style="padding-left : 50px;">b. Pekerjaan</td>
                            <td colspan="1" style="padding: 0px 30px">:</td>
                        </tr>
                    </table>

                    <br>
                    <br>
                    <br>
                    <div class="ttd">
                        <h3 style="padding-right: 150px; font-size:14px">Kepala Sekolah</h3>
                        <br>
                        <br>
                        <br>
                        <h4 style="padding-right: 100px; font-size:14px">Siti Isnawati, S.Pd.I S.Pd</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--/ Complex Headers -->
