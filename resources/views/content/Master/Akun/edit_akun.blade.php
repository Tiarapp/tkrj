<!-- Modal -->
<div class="modal fade text-start" id="edit" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Edit Data Akun</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="form_edit" action="{{route('master.akun.edit')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                {{ method_field('PUT') }}
                <div class="modal-body">
                    {{-- ID DATA --}}
                    <input type="hidden" id="id" name="id">
                    <div class="mb-1">
                        <label class="form-label">Level</label>
                        <input type="text" class="form-control" name="edit_level" id="edit_level" readonly/>
                    </div>
                    <div class="mb-1">
                        <label class="form-label">Nomor Induk</label>
                        <input type="text" class="form-control" name="edit_nomor_induk" id="edit_nomor_induk" readonly/>
                    </div>
                    <div class="mb-1">
                        <label class="form-label">Nama</label>
                        <input type="text" class="form-control" name="edit_nama" id="edit_nama" readonly/>
                    </div>
                    <div class="mb-1">
                        <label class="form-label">Status Akun</label>
                        <select class="basic-select2" name="status" id="status" required>
                            <option value="" disabled>Pilih Status</option>
                            <option value="Aktif">Aktif</option>
                            <option value="NonAktif">Non Aktif</option>
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
