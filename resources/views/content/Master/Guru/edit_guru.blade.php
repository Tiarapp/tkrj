<!-- Modal -->
<div class="modal fade text-start" id="edit{{ $g->id }}" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Edit Data Guru</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{ route('master.guru.edit', $g->id) }}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                {{ method_field('PUT') }}
                <div class="modal-body">
                    <div class="mb-1">
                        <label class="form-label">Nomor Induk Pegawai</label>
                        <input type="text" class="form-control" name="nomor_induk" value="{{ $g->nomor_induk }}" oninvalid="this.setCustomValidity('Isi NIP')" required/>
                    </div>
                    <div class="mb-1">
                        <label class="form-label">Nama Guru</label>
                        <input type="text" class="form-control" name="nama_guru" value="{{ $g->nama_guru }}" oninvalid="this.setCustomValidity('Isi Nama Guru')" required/>
                    </div>
                    <div class="mb-1">
                        <label class="form-label">Status Ekstra</label>
                        <select class="basic-select2" name="status" required>
                            <option value="{{ $g->status_aktif }}" disabled>{{ $g->status_aktif }}</option>
                            <option value="Aktif" >Aktif</option>
                            <option value="Non Aktif"  >Non Aktif</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>
