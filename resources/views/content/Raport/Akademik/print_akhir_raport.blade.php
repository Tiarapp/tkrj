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

                    <div class="raport">
                        <label for="" style="text-align: left"><b>CAPAIAN PERKEMBANGAN ANAK</b></label>
                    </div>

                    <div class="narasi">
                        <div class="jatidiri">
                            <img src="" alt="">
                            <h3>NILAI AGAMA DAN BUDI PEKERTI</h3>
                            <p>
                                Alhamdulillah, Ananda Abdurrahman Zubair sudah dapat mempercayai adanya Allah melalui ciptaan-Nya dengan mengenal alam semesta dan isinya sebagai ciptaan Allah, dan mengenal kisah Nabi dan Rasul Ulul Azmi. Ia juga sudah dapat mengenal nama-nama dan sifat-sifat Allah dengan mengenal 20 asmaul husna. Zubair juga dapat mengenali dan mempraktikkan kegiatan beribadah sehari-hari dengan mengenal shalat 5 waktu, mengenal 5 hadist, mengenal puasa ramadhan, mengenal zakat ftrah, dan menghafal syahadat beserta artinya. Memiliki perilaku yang mencerminkan sikap menerapkan ajaran agama Islam dalam aktivitas sehari- hari dengan wajah ceria. Menunjukkan sikap berbakti kepada orangtua dengan mengucapkan dan menjawab salam, mencium tangan serta menyambut kedatangan orang tua dengan wajah berseri, memanggil orangtua dengan sebutan yang baik (misal Ibu, bapak, Mama, papa dll), dan meminta izin jika mau melakukan sesuatu. Menunjukkan sikap menyayangi sesama makhluk hidup dengan berperilaku sopan dan peduli melalui perkataan dan perbuatan (misal: mengucapkan maaf, permisi, terima kasih) baik kepada guru, keluarga, teman, dan orang lain yang dikenal, dan menyayangi hewan (misal: memberi makan/ merawat hewan). Menjaga kebersihan dan merawat lingkungan alam sekitar yang merupakan karunia Allah SWT dengan membuang sampah pada tempatnya.Alhamdulillah, perkembangan Ananda dalam aspek nilai agama dan moral sangat baik. Semoga Ananda istiqomah dalam melaksanakan ibadah sehari-hari dan senantiasa berbakti kepada orang tua
                            </p>
                        </div>
                        <div class="jatidiri">
                            <img src="" alt="">
                            <h3>JATI DIRI</h3>
                            <p>
                                Alhamdulillah, Ananda Abdurrahman Zubair sudah dapat menunjukkan kegiatan yang terkait dengan aktivitas membersihkan diri dengan mencuci tangan dengan sabun, dan memakai masker. Ia juga sudah dapat mengkonsumsi makanan/ minuman yang bernutrisi dengan terbiasa minum air mineral, dan terbiasa mengkonsumsi makanan yang bersih, sehat, dan bergizi (misal: buah, sayur, lauk, susu). Zubair juga dapat menunjukkan kegiatan yang terkait dengan aktivitas berolahraga dengan melakukan gerakan tubuh secara terkoordinasi untuk melatih kelenturan, keseimbangan, dan kelincahan (misal: berjalan di atas papan titian, naik sepeda roda dua, dll). Menjaga keselamatan dirinya dengan mengetahui kapan harus meminta tolong. Menunjukkan keterampilan untuk melakukan koordinasi motorik kasar dan halus dengan menggunakan tangan kanan dan kiri dalam berbagai aktivitas (misal: mengancingkan baju, menali sepatu, menggambar, menempel, menggunting, makan, dll). Lebih suka bermain dengan teman atau orang lain dibandingkan bermain sendiri dengan mulai menikmati bermain bersama teman, dan mampu memainkan permainan yang membutuhkan kerjasama. Mengetahui kemampuan yang dikuasainya dengan mengetahui, menyebutkan, dan menceritakan hal- hal yang bisa dilakukannya dengan baik. Melakukan kegiatan di dalam kelompok yang sesuai minatnya dengan menyebutkan hal-hal atau kegiatan yang disukainya, dan memilih untuk bermain atau terlibat dalam kegiatan yang disukainya secara berkelompok. Memiliki perilaku yang mencerminkan sikap mandiri dengan memakai sepatu sendiri, memakai kaos kaki sendiri, meletakkan tasnya sendiri, memakai baju sendiri, berani ke kamar mandi sendiri, dan merapikan mainan atau barang setelah digunakan. Memiliki perilaku yang mencerminkan sikap disiplin dengan datang ke sekolah tepat waktu. Memiliki perilaku yang mencerminkan sikap tangguh dengan memiliki sikap gigih tidak mudah menyerah. Mengenali identitas diri melalui kebiasaan budaya dan keluarganya dengan mengetahui dan menyebutkan suku bangsa tempatnya berasal. Memiliki perilaku yang mencerminkan sikap patriotik dengan menjaga dan merawat barang pribadi. Alhamdulillah, perkembangan Ananda dalam aspek fsik motorik dan sosial emosional baik. Semoga di jenjang selanjutnya Ananda mampu menggunakan motorik kasar dan halus untuk kegiatan sehari-hari.
                            </p>
                        </div>
                        <div class="jatidiri">
                            <img src="" alt="">
                            <h3>DASAR LITERASI DAN STEAM</h3>
                            <p>
                                Alhamdulillah, Ananda Abdurrahman Zubair sudah dapat memahami arti atau informasi dari gambar, tanda atau simbol (termasuk angka dan huruf) bahkan cerita dengan mengenal lambang bilangan. Ia juga sudah dapat mampu mengutarakan, menunjukkan, atau menceritakan informasi yang diperoleh dari gambar, tanda, simbol (termasuk angka dan huruf) dan cerita dengan menyebutkan lambang bilangan 1-10. Zubair juga dapat dapat menceritakan mengenai ide, gagasan, dan perasaannya dengan mengungkapkan keinginan, perasaan, dan pendapat dengan kalimat sederhana dalam berkomunikasi dengan teman atau orang dewasa. Merespons secara tepat dalam komunikasi dua arah dan terlibat percakapan dengan bertanya dengan kalimat sederhana. Mengobservasi objek atau lingkungan sekitarnya dengan mengenal konsep besar-kecil, banyak-sedikit, panjang-pendek, berat-ringan, tinggi-rendah dengan mengukur menggunakan alat ukur tidak baku. Mengeksplorasi objek atau lingkungan sekitarnya dengan melakukan gerakan manipulatif untuk mendapatkan informasi sebuah objek atau lingkungannya (seperti: menumbuk, membanting, meremas, melempar, dll). Mengenal dan mampu menggunakan teknologi yang ada di lingkungan sekitarnya dengan menggunakan teknologi sesuai dengan fungsinya (seperti menggunakan pensil untuk menulis, gunting untuk memotong, sikat gigi untuk membersihkan gigi, dll ). Menganalisis dan mengevaluasi informasi yang diterima dengan berani bertanya untuk mendapatkan informasi. Melakukan uji coba dengan berbagai cara dengan mengeksplorasi dan bereksperimen dengan material alam atau material buatan manusia. Mengapresiasi karya seni dengan merasa senang terlibat dalam berbagai macam aktivitas seni seperti bernyanyi, menari, melukis atau menggambar, membuat patung atau membentuk.
                                Alhamdulillah, perkembangan Ananda dalam aspek bahasa dan kognitif sangat baik. Semoga di jenjang selanjutnya Ananda tetap semangat belajar untuk meraih prestasi
                            </p>
                        </div>
                        
                    </div>
                </div>                    
            </div>
        </div>
    </div>
</section>
<!--/ Complex Headers -->
