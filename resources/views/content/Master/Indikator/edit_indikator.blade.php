<!-- Modal -->
<div class="modal fade text-start" id="edit{{ $d->id }}" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Edit Data Area Development</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="edit_form" action="{{route('master.indikator.edit', $d->id)}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                {{ method_field('PUT') }}
                <div class="modal-body">
                    <div class="row d-flex align-items-end">
                        <div class="col-md-5 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Nama Indikator</label>
                                <input type="text" class="form-control" name="nama_indikator" id="basic-default-name" placeholder="Nama Indikator" value="{{ $d->nama_indikator }}" required/>
                            </div>
                        </div>
                        <div class="col-md-12 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Area Development</label>
                                <select class="basic-select2" name="devac_id" required>
                                    <option value="{{ $d->devac_id }}" selected>{{ $d->devac->nama_achievment }}</option>
                                    @foreach ($devac as $a)
                                        <option value="{{ $a->id }}">{{$a->nama_achievment}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-5 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Status Aktif</label>
                                <input type="text" class="form-control" name="status" id="basic-default-name" placeholder="Status" value="{{ $d->status }}" required/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>
