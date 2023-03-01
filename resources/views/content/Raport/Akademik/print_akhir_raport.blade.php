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
        /* border-bottom: 1px solid black; */
        padding: 10px;
    }

    .jatidiri img{
        height: 150px;
        width: 200px;
        font-size: 15px;
    }


    .narasi {
        height: auto;
        font-size: 15px;
        /* border: 1px solid black; */
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
                    <br><br><br><br>
                    <h3><b>PRESCHOOL RAUDLATUL JANNAH</b></h3>
                    <h3><b>LAPORAN CAPAIAN PERKEMBANGAN ANAK</b></h3>
                    <h3><b>SEMESTER 1</b></h3>
                    <br>
                    <div class="row" style="margin-bottom: 30px">
                        <div class="col-8">
                            <div class="row">
                                <label class="col-5" style="text-align: left; padding-right: 0px; font-size: 15px"><b>NAMA ANAK DIDIK </b></label>
                                <label class="col-7" style="text-align: left; padding-right: 0px; font-size: 15px"><b>: {{ $murid->nama }}</b></label>
                            </div>
                            <div class="row">
                                <label class="col-5" style="text-align: left; font-size: 15px"><b>KELAS/NO DIDIK</b></label>
                                <label class="col-7" style="text-align: left; font-size: 15px"><b>: {{ $murid->kelas }} / {{ $murid->nis }}</b></label>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="row">
                                <label class="col-6" style="text-align: left; padding: 0px; font-size: 15px"><b>TAHUN AJARAN</b></label>
                                <label class="col-5" style="text-align: left; padding-right: 0px; font-size: 15px"><b>: {{ $murid->tahunajaran }}</b></label>
                            </div>
                            <div class="row">
                                <label class="col-6" style="text-align: left; padding: 0px; font-size: 15px"><b>SEMESTER</b></label>
                                <label class="col-5" style="text-align: left; padding-right: 0px; font-size: 15px"><b>: {{ $periode->semester}}</b></label>
                            </div>
                        </div>
                    </div>

                    @if ($rekap_akademik == "")
                        <h4>SILAHKAN SIMPAN DATA NARASI TERLEBIH DAHULU (Masuk ke menu narasi)</h4>
                    @else
                        <div class="raport">
                            <label for="" style="text-align: left"><b>CAPAIAN PERKEMBANGAN ANAK</b></label>
                        </div>
                        @php
                            $k=1;
                            for ($i=0; $i < count($cp) ; $i++) {
                                echo '<div class="narasi">
                                        <div class="jatidiri" style="border: 1px solid black;">';
                                            if ($i==0) {
                                                echo '<img src="/Tahunajaran/'.$periode->tahunmulai.'/'.$murid->kelas.'/'.$rekap_akademik->foto_1.'")}}" alt="Image"/><br>';
                                            }elseif($i==1){
                                                echo '<img src="/Tahunajaran/'.$periode->tahunmulai.'/'.$murid->kelas.'/'.$rekap_akademik->foto_2.'")}}" alt="Image"/><br>';
                                            }elseif($i==2){
                                                echo'<img src="/Tahunajaran/'.$periode->tahunmulai.'/'.$murid->kelas.'/'.$rekap_akademik->foto_3.'")}}" alt="Image"/><br>';
                                            }
                                echo '<br><h3>'.$cp[$i].'</h3>';
                                            for ($j=0; $j < count($narasi) ; $j++) {
                                                if ($i==$j) {
                                                    echo '<br><p style ="text-align: justify; text-size: 10px; text-indent: 0.4in;">'.$narasi[$j].'</p>';
                                                    echo '<br><p style ="text-align: justify; text-size: 10px; text-indent: 0.4in;">'.$saran_tema[$j].'</p>';
                                                    echo '<br><p style ="text-align: justify; text-size: 10px; text-indent: 0.4in;">'.$saran_ortu[$j].'</p>';

                                                }
                                            }
                                echo '</div></div>';

                                echo '<div class="pagebreak"></div>';
                                echo '</br> </br>';
                                echo '<div class="judul" style="padding: 10px">
                                        <h3><b>PRESCHOOL RAUDLATUL JANNAH</b></h3>
                                        <h3><b>LAPORAN CAPAIAN PERKEMBANGAN ANAK</b></h3>
                                        <h3><b>SEMESTER 1</b></h3>
                                        <br>
                                        <div class="row" style="margin-bottom: 30px">
                                            <div class="col-8">
                                                <div class="row">
                                                    <label class="col-5" style="text-align: left; padding-right: 0px"><b>NAMA ANAK DIDIK </b></label>
                                                    <label class="col-7" style="text-align: left; padding-right: 0px"><b>:'.$murid->nama.'</b></label>
                                                </div>
                                                <div class="row">
                                                    <label class="col-5" style="text-align: left; "><b>KELAS/NO DIDIK</b></label>
                                                    <label class="col-7" style="text-align: left"><b>: '. $murid->kelas .' / '. $murid->nis .'</b></label>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="row">
                                                    <label class="col-6" style="text-align: left; padding: 0px"><b>TAHUN AJARAN</b></label>
                                                    <label class="col-5" style="text-align: left; padding-right: 0px"><b>: '. $murid->tahunajaran .'</b></label>
                                                </div>
                                                <div class="row">
                                                    <label class="col-6" style="text-align: left; padding: 0px"><b>SEMESTER</b></label>
                                                    <label class="col-5" style="text-align: left; padding-right: 0px"><b>: '. $periode->semester.'</b></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>';
                                $k++;
                            }
                        @endphp

                    @endif
                    <div class="narasi">
                        <div class="jatidiri" style="border: 1px solid black">
                            <h3>Projek Penguatan Profil Pelajar Pancasila</h3>
                            <p style ="text-align: justify; text-align: justify; text-indent: 0.4in;">{{ $proyek->detail_proyek ?? "" }}</p>
                            <p style ="text-align: justify; text-align: justify; text-indent: 0.4in;">{{ $proyek->catatan_proyek ?? "" }}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--/ Complex Headers -->
