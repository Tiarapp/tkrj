<!-- Modal -->
<div class="modal fade text-start" id="inlineForm" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Tambah Data Indicators</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('data.indicators.add')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}

                {{-- ID --}}
                    <input type="hidden" name="add_periode_id" id="add_periode_id">
                    <input type="hidden" name="add_periode_ajaran" id="add_periode_ajaran">
                    <input type="hidden" name="add_jenjang" id="add_jenjang">

                <div class="modal-body">
                    <div class="mb-1">
                        <label class="form-label" for="basic-default-name">Development Achievement</label>
                        <select class="select2 form-select" name="development" onchange="data_indicators()" id="development">
                            <option selected disabled>Pilih Development</option>
                            @foreach ($development as $d)
                                <option value="{{$d->id}}">{{$d->nama_achievment}}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="mb-1">
                        <label class="form-label" for="basic-default-name">Indicators</label>
                        <select class="select2 form-select" name="indicators" id="indicators" required>
                            <option value="" selected disabled>Pilih Indicators</option>
                        </select>
                    </div>

                    <div class="mb-1">
                        <label class="form-label" for="basic-default-name">Urutab</label>
                        <input type="number" class="form-control" name="urutan" id="basic-default-name" placeholder="No. Urutan" required/>                        
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>
