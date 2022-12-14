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
                                <input type="text" class="form-control" name="kode_ref" id="basic-default-name" placeholder="Kode Referensi" required/>
                                {{-- <textarea class="form-control" name="narasi" id="narasi" placeholder="Narasi" cols="30" rows="5"></textarea> --}}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-12">
                        <div class="mb-1">
                            <label class="form-label" for="basic-default-name">Jenis TP</label>
                            <select class="basic-select2" name="tp_id" required>
                                <option value="" selected disabled>Pilih TP</option>
                                @foreach ($tp as $c)
                                    <option value="{{ $c->id }}">{{$c->nama_tp}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="row d-flex align-items-end">
                        <div class="col-md-5 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Nama TK</label>
                                <input type="text" class="form-control" name="nama_tk" id="basic-default-name" placeholder="Nama Tujuan Kegiatan" required/>
                            </div>
                        </div>
                        <div class="col-md-5 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Status Aktif</label>
                                <select class="basic-select2" name="status_aktif" required>
                                    <option value="" selected disabled>Pilih Status</option>
                                    <option value="0">Non Aktif</option>
                                    <option value="1">Aktif</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex align-items-end">
                        <div class="col-md-12 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Narasi</label>
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
