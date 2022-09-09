<!-- Modal -->
<div class="modal fade text-start" id="edit{{ $d->id }}" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Edit Data Area Development</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="edit_form" action="{{route('master.devac.edit', $d->id)}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                {{ method_field('PUT') }}
                <div class="modal-body">
                    <div class="row d-flex align-items-end">
                        <div class="col-md-5 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Nama Achievment</label>
                                <input type="text" class="form-control" name="nama_achievment" id="basic-default-name" placeholder="Nama Achievment" value="{{ $d->nama_achievment }}" required/>
                            </div>
                        </div>
                        <div class="col-md-12 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Area Development</label>
                                <select class="basic-select2" name="area_id" required>
                                    <option value="{{ $d->area_id }}" selected>{{ $d->area->nama_area }}</option>
                                    @foreach ($area as $a)
                                        <option value="{{ $a->id }}">{{$a->nama_area}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-5 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Status Aktif</label>
                                <select class="basic-select2" name="status" required>
                                    <option value="Aktif" @if ($d->status == "Aktif") selected @endif>Aktif</option>
                                    <option value="Non Aktif" @if ($d->status == "Non Aktif") selected @endif>Non Aktif</option>
                                </select>
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
