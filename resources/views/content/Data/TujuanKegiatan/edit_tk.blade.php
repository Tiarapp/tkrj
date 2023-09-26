<!-- Modal -->
{{-- id="edit{{$t->id}}" --}}
<div class="modal fade text-start" id="edit{{ $tk->id }}" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Edit Data Tahun Ajaran</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('data.tk.edit', $tk->id)}}" method="post" enctype="multipart/form-data">
                {{-- <form id="jquery-val-form" action="" method="post" enctype="multipart/form-data"> --}}
                {{csrf_field()}}
                {{ method_field('PUT') }}
                <div class="modal-body">
                    @php
                        // $split= explode('/', $t->tahunajaran);
                    @endphp
                    <div class="row d-flex align-items-end">
                        <div class="col-md-12 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Kode Referensi</label>
                                <input type="text" class="form-control" name="kode_ref" id="basic-default-name" placeholder="Kode Referensi" value="{{ $tk->kode_ref }}" required/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-12">
                        <div class="mb-1">
                            <label class="form-label" for="basic-default-name">Jenis TP</label>
                            <select class="basic-select2" name="tp_id" required>
                                {{-- <option value="{{ $tk->tp_id }}" selected>{{ $tp->tujuan_pembelajaran }}</option> --}}
                                @foreach ($data_tp as $c)
                                    <option value="{{ $c->id }}">{{$c->nama_tp}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="row d-flex align-items-end">
                        <div class="col-md-4 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Nama TK</label>
                                <input type="text" class="form-control" name="nama_tk" id="basic-default-name" placeholder="Nama Tujuan Kegiatan" value="{{ $tk->nama_tk }}" required/>
                            </div>
                        </div>
                        <div class="col-md-4 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Status Aktif</label>
                                <select class="basic-select2" name="status_aktif" required>
                                    <option value="Aktif" @if ($tk->status_aktif == "Aktif") selected @endif>Aktif</option>
                                    <option value="Non Aktif" @if ($tk->status_aktif == "Non Aktif") selected @endif>Non Aktif</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Tahun Ajaran</label>
                                <select class="basic-select2" name="ta_id" required>
                                    <option >Pilih Tahun Ajaran</option>
                                    @foreach($tahun_ajaran as $ta)
                                    <option value="{{$ta->id}}" @if($tk->tahunajaran_id == $ta->id) selected @endif>{{$ta->tahun_ajaran}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex align-items-end">
                        <div class="col-md-12 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Narasi</label>
                                <textarea class="form-control" name="narasi" id="narasi" placeholder="Narasi" cols="30" rows="5">{{ $tk->narasi }}</textarea>
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
