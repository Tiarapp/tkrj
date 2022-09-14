<!-- Modal -->
<div class="modal fade text-start" id="inlineForm" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Tambah Data Tahfidz</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('master.tahfidz.add')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="modal-body">
                    <div class="mb-1">
                        <label class="form-label" for="basic-default-name">Nama Surat</label>
                        <input type="text" class="form-control" name="surat" id="basic-default-name" placeholder="Nama Surat" required/>
                    </div>
                    <div class="mb-1">
                        <label class="form-label" for="basic-default-name">Jumlah Ayat</label>
                        <input type="number" class="form-control" name="jumlah" id="basic-default-name" placeholder="Jumlah Ayat" required/>
                    </div>
                    <div class="mb-1">
                        <label class="form-label" for="basic-default-name">Hari</label>
                        <input type="number" class="form-control" name="hari" id="basic-default-name" placeholder="Hari" required/>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>
