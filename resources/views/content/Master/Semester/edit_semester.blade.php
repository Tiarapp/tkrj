<!-- Modal -->
{{-- id="edit{{$t->id}}" --}}
<div class="modal fade text-start" id="edit{{ $s->id }}" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Edit Data Elemen CP</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('master.semester.edit', $s->id)}}" method="post" enctype="multipart/form-data">
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
                                    <label class="form-label" for="basic-default-name">Semester</label>
                                    <input type="text" class="form-control" name="semester" id="basic-default-name" placeholder="Semester" value="{{ $s->nama_semester }}" required/>
                                </div>
                            </div>
                            <div class="col-md-12 col-12">
                                <div class="mb-1">
                                    <label class="form-label" for="basic-default-name">Jenjang</label>
                                    <select class="basic-select2" name="jenjang_id" required>
                                        <option value="{{ $s->jenjang_id }}" selected >{{ $s->jenjang->nama_jenjang }}</option>
                                        @foreach ($jenjang as $j)
                                            <option value="{{ $j->id }}">{{$j->nama_jenjang}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-12 col-12">
                                <div class="mb-1">
                                    <label class="form-label" for="basic-default-name">Tahun Ajaran</label>
                                    <select class="basic-select2" name="thnajaran_id" required>
                                        <option value="{{ $s->tahun_ajaran_id }}" selected >{{ $s->thnajaran->tahun_ajaran }}</option>
                                        @foreach ($tahun as $t)
                                            <option value="{{ $t->id }}">{{$t->tahun_ajaran}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row d-flex align-items-end">
                            <div class="col-md-5 col-12">
                                <div class="mb-1">
                                    <label class="form-label" for="basic-default-name">Status Aktif</label>
                                    <input type="text" class="form-control" name="status" id="basic-default-name" placeholder="Status" value="{{ $s->status }}" required/>
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
