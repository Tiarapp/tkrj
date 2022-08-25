<!-- Modal -->
{{-- id="edit{{$t->id}}" --}}
<div class="modal fade text-start" id="edit{{ $kat->id }}" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Edit Data Kategori</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('master.kategori.edit', $kat->id)}}" method="post" enctype="multipart/form-data">
                {{-- <form id="jquery-val-form" action="" method="post" enctype="multipart/form-data"> --}}
                {{csrf_field()}}
                {{ method_field('PUT') }}
                <div class="modal-body">
                    @php
                        // $split= explode('/', $t->tahunajaran);
                    @endphp
                    <div class="row d-flex align-items-end">
                        <div class="col-md-5 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Nama Kategori</label>
                                {{-- <input type="text" class="form-control" name="mulai" id="basic-default-name" value="{{$split[0]}}" oninvalid="this.setCustomValidity('Isi Tahun Ajaran Mulai')" readonly/> --}}
                                <input type="text" class="form-control" name="nama_kategori" id="basic-default-name" value="{{ $kat->nama_kategori }}" />
                            </div>
                        </div>
                        <div class="col-md-5 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Status</label>
                                {{-- <input type="text" class="form-control" name="selesai" id="basic-default-name" value="{{$split[1]}}" oninvalid="this.setCustomValidity('Isi Tahun Ajaran Selesai')" readonly/> --}}
                                <input type="text" class="form-control" name="status_aktif" id="basic-default-name" value="{{ $kat->status_aktif }}" />
                            </div>
                        </div>
                        <div class="col-md-12 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Keterangan</label>
                                <textarea class="form-control" name="keterangan" id="keterangan" cols="30" rows="10">{{ $kat->keterangan }}</textarea>
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
