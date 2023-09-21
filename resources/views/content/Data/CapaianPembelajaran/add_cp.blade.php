<!-- Modal -->
<div class="modal fade text-start" id="inlineForm" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Tambah Data Tahun Ajaran</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('data.cp.add')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="modal-body">
                    <div class="row d-flex align-items-end">
                        <div class="col-md-4 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Nama CP</label>
                                <input type="text" class="form-control" name="nama_cp" id="basic-default-name" placeholder="Tahun Ajaran Mulai" required/>
                            </div>
                        </div>
                        <div class="col-md-4 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Status Aktif</label>
                                <select class="basic-select2" name="status_aktif" required>
                                    <option value="" selected disabled>Pilih Opsi</option>
                                    <option value="Aktif" >Aktif</option>
                                    <option value="Non Aktif" >Non Aktif</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Tahun Ajaran</label>
                                <select class="basic-select2" name="ta_id" required>
                                    <option >Pilih Tahun Ajaran</option>
                                    @foreach($tahun_ajaran as $ta)
                                    <option value="{{$ta->id}}">{{$ta->tahun_ajaran}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex align-items-end">
                        <div class="col-md-12 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Keterangan</label>
                                {{-- <input type="textarea" class="form-control" name="keterangan" id="basic-default-name" placeholder="Keterangan" required/> --}}
                                <textarea class="form-control" name="keterangan" id="keterangan" placeholder="Keterangan" cols="30" rows="5"></textarea>
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
