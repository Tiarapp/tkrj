<!-- Modal -->
{{-- <div class="modal fade text-start" id="edit{{$k->id}}" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true"> --}}
<div class="modal fade text-start" id="edit{{ $siswa->id }}" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Edit Data Kelas</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('master.siswa.edit', $siswa->id)}}" method="post" enctype="multipart/form-data">
            {{-- <form id="jquery-val-form" action="" method="post" enctype="multipart/form-data"> --}}
                {{csrf_field()}}
                {{ method_field('PUT') }}
                <div class="modal-body">
                    <div class="row d-flex align-items-end">
                        <div class="col-md-5 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">NIS</label>
                                <input type="text" class="form-control" name="nis" id="basic-default-name" placeholder="Nomer Induk Siswa" value="{{ $siswa->nis }}" required/>
                            </div>
                        </div>
                        <div class="col-md-5 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">NIK</label>
                                <input type="text" class="form-control" name="nik" id="basic-default-name" placeholder="NIK" value="{{ $siswa->nik }}" required/>
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex align-items-end">
                        <div class="col-md-12 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Nama Siswa</label>
                                <input type="text" class="form-control" name="nama_siswa" id="basic-default-name" placeholder="Nama Siswa" value="{{ $siswa->nama_siswa }}" required/>
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex align-items-end">
                        <div class="col-md-5 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Tahun Masuk</label>
                                <input type="textarea" class="form-control" name="tahun_masuk" id="basic-default-name" placeholder="Tahun Masuk" value="{{ $siswa->tahun_masuk }}" required/>
                                {{-- <textarea class="form-control" name="" id="" placeholder="Narasi" cols="30" rows="5"></textarea> --}}
                            </div>
                        </div>
                        <div class="col-md-5 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Tahun Keluar</label>
                                <input type="text" class="form-control" name="tahun_keluar" value="{{ $siswa->tahun_keluar }}" id="basic-default-name" placeholder="Tahun Keluar" />
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex align-items-end">
                        <div class="col-md-12 col-12">
                            <div class="mb-1">
                                <label class="form-label" for="basic-default-name">Status</label>
                                <input type="text" class="form-control" name="status" id="basic-default-name" placeholder="Status" value="{{ $siswa->status }}" required/>
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
