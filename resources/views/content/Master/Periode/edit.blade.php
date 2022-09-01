<!-- Modal -->
<div class="modal fade text-start" id="edit{{$p->id}}" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Edit Data Periode</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('master.periode.edit', $p->id)}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                {{ method_field('PUT') }}
                <div class="modal-body">
                    <div class="row d-flex align-items-end">
                        <div class="col-md-6 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Tahun Ajaran</label>
                                <input type="text" class="form-control" id="basic-default-name" value="{{$p->tahunmulai}}/{{$p->tahunselesai}}" readonly/>
                            </div>
                        </div>
                        <div class="col-md-6 col-12">
                            <div class="mb-1">
                                <label class="form-label">Semester</label>
                                <select class="basic-select2" name="semester_id" required>
                                    <option value="" selected disabled>Pilih Semester</option>
                                    @foreach ($semester as $s)
                                        <option value="{{$s->id}}#{{$s->nama_semester}}" @if ($p->semester_id."#".$p->semester == $s->id."#".$s->nama_semester) selected @endif>{{$s->nama_semester}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Periode</label>
                                <select class="basic-select2" name="periode" required>
                                    <option value="" selected disabled>Pilih Periode</option>
                                    <option value="PTS" @if ($p->periode == "PTS") selected @endif>PTS</option>
                                    <option value="PAS" @if ($p->periode == "PAS") selected @endif>PAS</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Status</label>
                                <select class="basic-select2" name="status" required>
                                    <option value="" selected disabled>Pilih Status</option>
                                    <option value="0" @if ($p->status == "0") selected @endif>Non Aktif</option>
                                    <option value="1" @if ($p->status == "1") selected @endif>Aktif</option>
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
