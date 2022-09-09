<!-- Modal -->
{{-- id="edit{{$t->id}}" --}}
<div class="modal fade text-start" id="edit{{ $tp->id }}" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Edit Data Tujuan Pembelajaran</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('master.tp.edit', $tp->id)}}" method="post" enctype="multipart/form-data">
                {{-- <form id="jquery-val-form" action="" method="post" enctype="multipart/form-data"> --}}
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
                                    <label class="form-label" for="basic-default-name">Nama Tujuan Pembelajaran</label>
                                    <input type="text" class="form-control" name="nama_tp" id="basic-default-name" placeholder="Nama Tujuan Pembelajaran" value="{{ $tp->nama_tp }}" required/>
                                </div>
                            </div>
                            <div class="col-md-12 col-12">
                                <div class="mb-1">
                                    <label class="form-label" for="basic-default-name">Jenis CP</label>
                                    <select class="basic-select2" name="cp_id" required>
                                        <option value="{{ $tp->elemen_id }}" selected>{{ $tp->elemencp->nama_elemen }}</option>
                                        @foreach ($cp as $c)
                                            <option value="{{ $c->id }}">{{$c->nama_elemen}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row d-flex align-items-end">
                            <div class="col-md-12 col-12">
                                <div class="mb-1">
                                    <label class="form-label" for="basic-default-name">Narasi</label>
                                    {{-- <input type="textarea" class="form-control" name="narasi" id="basic-default-name" placeholder="Narasi" required/> --}}
                                    <textarea class="form-control" name="narasi" id="narasi" placeholder="Narasi" cols="30" rows="5">{{ $tp->narasi }}</textarea>
                                </div>
                            </div>
                            <div class="col-md-5 col-12">
                                <div class="mb-1">
                                    <label class="form-label" for="basic-default-name">Status Aktif</label>
                                    <select class="basic-select2" name="status_aktif" required>
                                        <option value="Aktif" @if ($tp->status_aktif == "Aktif") selected @endif>Aktif</option>
                                        <option value="Non Aktif" @if ($tp->status_aktif == "Non Aktif") selected @endif>Non Aktif</option>
                                    </select>
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
