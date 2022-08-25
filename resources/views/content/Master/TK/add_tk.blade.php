<!-- Modal -->
<div class="modal fade text-start" id="inlineForm" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Tambah Data Tujuan Kegiatan</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('master.tk.add')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="modal-body">
                    <div class="row d-flex align-items-end">
                        <div class="col-md-12 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Kode Referensi</label>
                                <input type="text" class="form-control" name="kode_ref" id="basic-default-name" placeholder="Narasi" required/>
                                {{-- <textarea class="form-control" name="narasi" id="narasi" placeholder="Narasi" cols="30" rows="5"></textarea> --}}
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex align-items-end">
                        <div class="col-md-5 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Nama TK</label>
                                <input type="text" class="form-control" name="nama_tk" id="basic-default-name" placeholder="Tahun Ajaran Mulai" required/>
                            </div>
                        </div>
                        <div class="col-md-5 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Status Aktif</label>
                                <input type="text" class="form-control" name="status_aktif" id="basic-default-name" placeholder="Status" required/>
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex align-items-end">
                        <div class="col-md-12 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Narasi</label>
                                {{-- <input type="textarea" class="form-control" name="narasi" id="basic-default-name" placeholder="Narasi" required/> --}}
                                <textarea class="form-control" name="narasi" id="narasi" placeholder="Narasi" cols="30" rows="5"></textarea>
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
