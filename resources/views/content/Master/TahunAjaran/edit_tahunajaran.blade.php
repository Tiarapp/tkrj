<!-- Modal -->
{{-- id="edit{{$t->id}}" --}}
<div class="modal fade text-start" id="edit{{ $t->id }}" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Edit Data Tahun Ajaran</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('master.tahunajaran.edit', $t->id)}}" method="post" enctype="multipart/form-data">
                {{-- <form id="jquery-val-form" action="" method="post" enctype="multipart/form-data"> --}}
                {{csrf_field()}}
                {{ method_field('PUT') }}
                <div class="modal-body">
                    @php
                        $split= explode('/', $t->tahun_ajaran);
                    @endphp
                    <div class="row d-flex align-items-end">
                        <div class="col-md-5 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Tahun Ajaran Mulai</label>
                                <input type="text" class="form-control" name="mulai" id="basic-default-name" value="{{$split[0]}}" oninvalid="this.setCustomValidity('Isi Tahun Ajaran Mulai')" readonly/>
                                {{-- <input type="text" class="form-control" name="mulai" id="basic-default-name" value="2021" oninvalid="this.setCustomValidity('Isi Tahun Ajaran Mulai')" readonly/> --}}
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
                                <input type="text" class="form-control" name="selesai" id="basic-default-name" value="{{$split[1]}}" oninvalid="this.setCustomValidity('Isi Tahun Ajaran Selesai')" readonly/>
                                {{-- <input type="text" class="form-control" name="selesai" id="basic-default-name" value="2022" oninvalid="this.setCustomValidity('Isi Tahun Ajaran Selesai')" readonly/> --}}
                            </div>
                        </div>
                        <div class="col-md-12 col-12">
                            <div class="mb-1">
                                <label class="form-label">Status Tahun Ajaran</label>
                                <select class="basic-select2" name="status" required>
                                    <option value="Aktif" @if ($t->status == "Aktif") selected @endif>Aktif</option>
                                    <option value="Non Aktif" @if ($t->status == "Non Aktif") selected @endif>Non Aktif</option>
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
