<!-- Modal -->
<div class="modal fade text-start" id="inlineForm" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Tambah Data Area Development</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('master.area.add')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="modal-body">
                    <div class="row d-flex align-items-end">
                        <div class="col-md-8 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Nama Area</label>
                                <input type="text" class="form-control" name="nama_area" id="basic-default-name" placeholder="Nama AREAS OF DEVELOPMENT" required/>
                            </div>
                        </div>
                        <div class="col-md-4 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Status Aktif</label>
                                <div class="d-flex flex-column">
                                    <div class="form-check form-check-success form-switch">
                                      <input type="checkbox" name="status" checked class="form-check-input" id="customSwitch4" />
                                    </div>
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
