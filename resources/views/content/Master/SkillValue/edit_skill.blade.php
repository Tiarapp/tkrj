<!-- Modal -->
{{-- id="edit{{$t->id}}" --}}
<div class="modal fade text-start" id="edit{{ $skill->id }}" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Edit Data Tujuan Pembelajaran</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('master.skillvalue.edit', $skill->id)}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                {{ method_field('PUT') }}
                <div class="modal-body">
                    <div class="row d-flex align-items-end">
                        <div class="row d-flex align-items-end">
                            <div class="col-md-12 col-12">
                                <div class="mb-1">
                                    <label class="form-label" for="basic-default-name">Nama Skill Value</label>
                                    <input type="text" class="form-control" name="skill_value" id="basic-default-name" placeholder="Tujuan Pembelajaran" value="{{ $skill->skill_value }}" required/>
                                </div>
                            </div>
                        </div>
                        <div class="row d-flex align-items-end">
                            <div class="col-md-5 col-12">
                                <div class="mb-1">
                                    <label class="form-label" for="basic-default-name">Status Aktif</label>
                                    <input type="text" class="form-control" name="status_aktif" id="basic-default-name" placeholder="Status" value="{{ $skill->status_aktif }}" required/>
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
