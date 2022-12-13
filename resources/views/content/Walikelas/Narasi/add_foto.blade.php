<!-- Modal -->
<div class="modal fade text-start" id="inlineForm{{$key}}" tabindex="-1" aria-labelledby="myModalLabel16" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5>Input Foto Capaian Pembelajaran</h5>
                <h6>{{$na->cp}}</h6>
                {{-- <h5 class="modal-title" id="myModalLabel33">Input Foto Capaian Pembelajaran </h5> --}}
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <iframe src=""  frameborder="0" width="300px" height="300px" style="border: 1px solid black"></iframe>
                <form id="jquery-val-form" action="{{ route('walikelas.Narasi.add_foto') }}" method="post" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <input type="file" name="foto_cp[{{$key}}]" id="foto_cp">
                    <button type="submit" class="btn btn-primary me-1">Simpan</button>
                </form>
            </div>
        </div>
    </div>
</div>
