<!-- Modal -->
<div class="modal fade text-start" id="inlineForm" tabindex="-1" aria-labelledby="myModalLabel16" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5>Input Foto Capaian Pembelajaran</h5>
                {{-- <h5 class="modal-title" id="myModalLabel33">Input Foto Capaian Pembelajaran </h5> --}}
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                @if (empty($rekap_akademik))
                    <img id="foto1" class="card-img" style="width: 400px; height: 400px; text-align: left "
                    src="" hidden>
                    <img id="foto2" class="card-img" style="width: 400px; height: 400px; text-align: left "
                    src="" hidden>
                    <img id="foto3" class="card-img" style="width: 400px; height: 400px; text-align: left "
                    src="" hidden>
                @else
                    <img id="foto1" class="card-img" style="width: 400px; height: 400px; text-align: left "
                    src="{{ asset('/Tahunajaran/'.$periode->tahunmulai."/".$periode->id."/".$murid->kelas."/".$rekap_akademik->foto_1)}}" hidden>
                    <img id="foto2" class="card-img" style="width: 400px; height: 400px; text-align: left "
                    src="{{ asset('/Tahunajaran/'.$periode->tahunmulai."/".$periode->id."/".$murid->kelas."/".$rekap_akademik->foto_2)}}" hidden>
                    <img id="foto3" class="card-img" style="width: 400px; height: 400px; text-align: left "
                    src="{{ asset('/Tahunajaran/'.$periode->tahunmulai."/".$periode->id."/".$murid->kelas."/".$rekap_akademik->foto_3)}}" hidden>
                @endif

                <form id="form_foto" action="{{route('walikelas.narasi.add_foto')}}" method="post" enctype="multipart/form-data">
                    {{csrf_field()}}
                    {{ method_field('PUT') }}
                    {{-- ID Murid --}}
                    <input type="hidden" name="id_murid" id="id_murid" value="{{$murid->id}}">

                    <select class="select2-size-sm form-select" name="cp_id" id="cp_id" required>
                        <option value="" selected disabled>Pilih CP</option>
                        @foreach ($cp as $c)
                            <option value="{{ $c->id }}">{{$c->nama_cp}}</option>
                        @endforeach
                    </select>
                    <br>
                    <br>
                    <br>

                    <input type="file" name="foto_cp" id="foto_cp">

                    <button onclick="submit($key)" class="btn btn-primary me-1">Simpan</button>
                </form>
            </div>
        </div>
    </div>
</div>
