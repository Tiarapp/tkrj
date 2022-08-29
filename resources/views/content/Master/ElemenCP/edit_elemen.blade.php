<!-- Modal -->
{{-- id="edit{{$t->id}}" --}}
<div class="modal fade text-start" id="edit{{ $e->id }}" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Edit Data Elemen CP</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('master.elemen.edit', $e->id)}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                {{ method_field('PUT') }}
                <div class="modal-body">
                    @php
                        // $split= explode('/', $t->tahunajaran);
                    @endphp
                    <div class="row d-flex align-items-end">
                        <div class="row d-flex align-items-end">
                            <div class="col-md-12 col-12">
                                <div class="mb-1">
                                    <label class="form-label" for="basic-default-name">Nama Elemen CP</label>
                                    <input type="text" class="form-control" name="elemen" id="basic-default-name" placeholder="Nama Tujuan Pembelajaran" value="{{ $e->nama_elemen }}" required/>
                                </div>
                            </div>
                            <div class="col-md-12 col-12">
                                <div class="mb-1">
                                    <label class="form-label" for="basic-default-name">Jenis CP</label>
                                    <select class="basic-select2" name="cp_id" required>
                                        <option value="{{ $e->cp_id }}" selected >{{ $e->cp->nama_cp }}</option>
                                        @foreach ($cp as $c)
                                            <option value="{{ $c->id }}">{{$c->nama_cp}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row d-flex align-items-end">
                            <div class="col-md-12 col-12">
                                <div class="mb-1">
                                    <label class="form-label" for="basic-default-name">Narasi</label>
                                    <textarea class="form-control" name="narasi" id="narasi" placeholder="Narasi" cols="30" rows="5">{{ $e->narasi }}</textarea>
                                </div>
                            </div>
                            <div class="col-md-5 col-12">
                                <div class="mb-1">
                                    <label class="form-label" for="basic-default-name">Status Aktif</label>
                                    <input type="text" class="form-control" name="status" id="basic-default-name" placeholder="Status" value="{{ $e->status }}" required/>
                                </div>
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
