<!-- Modal -->
<div class="modal fade text-start" id="inlineForm" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Tambah Data Periode</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('master.periode.add')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="modal-body">
                    <div class="row d-flex align-items-end">
                        <div class="col-md-6 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Tahun Ajaran</label>
                                <select class="basic-select2" name="tahunajaran_id" required>
                                    <option value="" selected disabled>Pilih Tahun Ajaran</option>
                                    @foreach ($tahunajaran as $t)
                                        <option value="{{$t->id}}#{{$t->mulai}}#{{$t->selesai}}">{{$t->mulai}}/{{$t->selesai}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 col-12">
                            <div class="mb-1">
                                <label class="form-label">Semester</label>
                                <select class="basic-select2" name="semester_id" required>
                                    <option value="" selected disabled>Pilih Semester</option>
                                    @foreach ($semester as $s)
                                        <option value="{{$s->id}}#{{$s->nama_semester}}">{{$s->nama_semester}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Periode</label>
                                <select class="basic-select2" name="periode" required>
                                    <option value="" selected disabled>Pilih Periode</option>
                                    <option value="PTS">PTS</option>
                                    <option value="PAS">PAS</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Status</label>
                                <select class="basic-select2" name="status" required>
                                    <option value="" selected disabled>Pilih Status</option>
                                    <option value="0">Non Aktif</option>
                                    <option value="1">Aktif</option>
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
