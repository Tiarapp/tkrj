<!-- Modal -->
<div class="modal fade text-start" id="inlineForm" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Tambah Data Tilawah</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('master.tilawah.add')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6 col-12">
                            <div class="input-group mb-2">
                                <span class="input-group-text" id="basic-addon1">Tilawati</span>
                                <input type="text" class="form-control" name="tilawati"/>
                            </div>
                        </div>
                        <div class="col-md-6 col-12">
                            <div class="input-group mb-2">
                                <span class="input-group-text" id="basic-addon1">Halaman</span>
                                <input type="text" class="form-control" name="jumlah" />
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
