<!-- Modal -->
<div class="modal fade text-start" id="inlineForm" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Tambah Data Kelas</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('master.kelas.add')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="modal-body">
                    <div class="mb-1">
                        <label class="form-label" for="basic-default-name">Nama Kelas</label>
                        <input type="text" class="form-control" name="nama_kelas" id="basic-default-name" placeholder="Nama Kelas" required/>
                    </div>
                    <div class="mb-1">
                        <label class="form-label" for="basic-default-name">Jenjang Kelas</label>
                        <select class="basic-select2" name="jenjang" required>
                            <option value="" selected disabled>Pilih Jenjang</option>
                            @foreach ($jenjang as $j)
                                <option value="{{ $j->nama_jenjang }}">{{$j->nama_jenjang}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-1">
                        <label class="form-label">Status</label>
                        <select class="basic-select2" name="status" required>
                            <option value="" selected disabled>Pilih Status</option>
                            <option value="Aktif" >Aktif</option>
                            <option value="Non Aktif" >Non Aktif</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>
