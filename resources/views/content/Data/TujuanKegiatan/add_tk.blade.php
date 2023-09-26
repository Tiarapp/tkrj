<!-- Modal -->
<div class="modal fade text-start" id="inlineForm" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Tambah Data Tujuan Kegiatan</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('data.tk.add')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="modal-body">
                    <div class="row d-flex align-items-end">
                        <div class="col-md-12 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Kode Referensi</label>
                                <input type="text" class="form-control" name="kode_ref" id="basic-default-name" placeholder="Kode Referensi"/>
                                {{-- <textarea class="form-control" name="narasi" id="narasi" placeholder="Narasi" cols="30" rows="5"></textarea> --}}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-12">
                        <div class="mb-1">
                            <label class="form-label" for="basic-default-name">Jenis TP</label>
                            <select class="basic-select2" name="tp_id" required>
                                <option value="" selected disabled>Pilih TP</option>
                                @foreach ($data_tp as $tp)
                                    <option value="{{ $tp->id }}#{{$tp->tujuan_pembelajaran}}#{{$tp->cp_id}}">{{$tp->tujuan_pembelajaran}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="row d-flex align-items-end">
                        <div class="col-md-6 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Status Aktif</label>
                                <select class="basic-select2" name="status_aktif" required>
                                    {{-- <option value="" selected disabled>Pilih Status</option> --}}
                                    {{-- <option value="Non Aktif">Non Aktif</option> --}}
                                    <option selected value="Aktif">Aktif</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Tahun Ajaran</label>
                                <select class="basic-select2" name="ta_id" required>
                                    {{-- <option >Pilih Tahun Ajaran</option> --}}
                                    {{-- @foreach($tahun_ajaran as $ta) --}}
                                    {{-- <option value="{{$ta->id }}">{{$ta->tahun_ajaran}}</option> --}}
                                    <option selected value="4">2023/2024</option>
                                    {{-- @endforeach --}}
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Jenjang</label>
                                <select class="basic-select2" name="jenjang" required>
                                    <option >Pilih Jenjang</option>
                                    @foreach($jenjang as $j)
                                    <option value="{{$j->id}}#{{$j->nama_jenjang}}">{{$j->nama_jenjang}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Nomor</label>
                                <input type="text" name="no" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex align-items-end">
                        <div class="col-md-12 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Tujuan Kegiatan</label>
                                <textarea class="form-control" name="nama_tk" id="narasi" placeholder="Narasi" cols="30" rows="5"></textarea>
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
