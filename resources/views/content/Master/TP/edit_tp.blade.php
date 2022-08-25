<!-- Modal -->
{{-- id="edit{{$t->id}}" --}}
<div class="modal fade text-start" id="edit{{ $tp->id }}" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Edit Data Tujuan Pembelajaran</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('master.tp.edit', $tp->id)}}" method="post" enctype="multipart/form-data">
                {{-- <form id="jquery-val-form" action="" method="post" enctype="multipart/form-data"> --}}
                {{csrf_field()}}
                {{ method_field('PUT') }}
                <div class="modal-body">
                    @php
                        // $split= explode('/', $t->tahunajaran);
                    @endphp
                    <div class="row d-flex align-items-end">
                        <div class="row d-flex align-items-end">
                            <div class="col-md-12 col-12">
                                <div class="mb-1">
                                    <label class="form-label" for="basic-default-name">Tujuan Pembelajaran</label>
                                    <input type="text" class="form-control" name="nama_tp" id="basic-default-name" placeholder="Tujuan Pembelajaran" value="{{ $tp->nama_tp }}" required/>
                                </div>
                            </div>
                        </div>
                        <div class="row d-flex align-items-end">
                            <div class="col-md-5 col-12">
                                <div class="mb-1">
                                    <label class="form-label" for="basic-default-name">Status Aktif</label>
                                    <input type="text" class="form-control" name="status_aktif" id="basic-default-name" placeholder="Status" value="{{ $tp->status_aktif }}" required/>
                                </div>
                            </div>
                        </div>
                        <div class="row d-flex align-items-end">
                            <div class="col-md-12 col-12">
                                <div class="mb-1">
                                    <label class="form-label" for="basic-default-name">Narasi</label>
                                    {{-- <input type="textarea" class="form-control" name="narasi" id="basic-default-name" placeholder="Narasi" required/> --}}
                                    <textarea class="form-control" name="narasi" id="narasi" placeholder="Narasi" cols="30" rows="5">{{ $tp->narasi }}</textarea>
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
