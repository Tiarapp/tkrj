<!-- Modal -->
<div class="modal fade text-start" id="edit{{ $cp->id }}" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Edit Data Tahun Ajaran</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="edit_form" action="{{route('master.cp.edit', $cp->id)}}" method="post" enctype="multipart/form-data">
                {{-- <form id="jquery-val-form" action="" method="post" enctype="multipart/form-data"> --}}
                {{csrf_field()}}
                {{ method_field('PUT') }}
                <div class="modal-body">
                    <div class="row d-flex align-items-end">
                        <div class="col-md-5 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Nama CP</label>
                                <input type="text" class="form-control" name="nama_cp" id="basic-default-name" placeholder="Tahun Ajaran Mulai" value="{{ $cp->nama_cp }}" required/>
                            </div>
                        </div>
                        <div class="col-md-5 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Status Aktif</label>
                                <input type="text" class="form-control" name="status_aktif" id="basic-default-name" placeholder="Status" value="{{ $cp->status_aktif }}" required/>
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex align-items-end">
                        <div class="col-md-12 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Keterangan</label>
                                {{-- <input type="textarea" class="form-control" name="keterangan" id="basic-default-name" placeholder="Keterangan" required/> --}}
                                <textarea class="form-control" name="keterangan" id="keterangan" placeholder="Keterangan" cols="30" rows="5">{{ $cp->keterangan }}</textarea>
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
