<!-- Modal -->
<div class="modal fade text-start" id="inlineForm" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Tambah Data Tahun Ajaran</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('master.tahunajaran.add')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="modal-body">
                    <div class="row d-flex align-items-end">
                        <div class="col-md-5 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Tahun Ajaran Mulai</label>
                                <input type="text" class="form-control" name="mulai" id="basic-default-name" placeholder="Tahun Ajaran Mulai" required/>
                            </div>
                        </div>
                        <div class="col-md-2 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name"></label>
                                <input type="text" class="form-control" id="basic-default-name" value="   /" readonly/>
                            </div>
                        </div>
                        <div class="col-md-5 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Tahun Ajaran Selesai</label>
                                <input type="text" class="form-control" name="selesai" id="basic-default-name" placeholder="Tahun Ajaran Selesai" required/>
                            </div>
                        </div>
                        
                        <div class="col-md-12 col-12">
                            <div class="mb-1">
                                <label class="form-label">Status Tahun Ajaran</label>
                                <select class="basic-select2" name="status" required>
                                    <option value="" selected disabled>Pilih Status</option>
                                    {{-- <option value="1" @if ($t->status == "1") selected @endif>Aktif</option>
                                    <option value="0" @if ($t->status == "0") selected @endif>Non Aktif</option> --}}
                                    <option value="Aktif" >Aktif</option>
                                    <option value="Non Aktif" >Non Aktif</option>
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
