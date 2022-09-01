<!-- Modal -->
{{-- <div class="modal fade text-start" id="edit{{$k->id}}" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true"> --}}
<div class="modal fade text-start" id="edit{{ $k->id }}" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Edit Data Kelas</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('master.kelas.edit', $k->id)}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                {{ method_field('PUT') }}
                <div class="modal-body">
                    <div class="mb-1">
                        <label class="form-label">Nama Kelas</label>
                        <input type="text" class="form-control" name="nama_kelas" value="{{ $k->nama_kelas }}" oninvalid="this.setCustomValidity('Isi Nama Kelas')" required/>
                    </div>
                    <div class="mb-1">
                        <label class="form-label" for="basic-default-name">Jenjang Kelas</label>
                        <select class="basic-select2" name="jenjang" required>
                            <option value="" selected disabled>Pilih Jenjang</option>
                            @foreach ($jenjang as $j)
                                <option value="{{ $j->nama_jenjang }}" @if ($k->jenjang == $j->nama_jenjang) selected @endif>{{$j->nama_jenjang}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-1">
                        <label class="form-label">Status</label>
                        <select class="basic-select2" name="status" required>
                            <option value="" selected disabled>Pilih Status</option>
                            <option value="Aktif" @if ($k->status == "Aktif") selected @endif>Aktif</option>
                            <option value="Non Aktif" @if ($k->status == "Non Aktif") selected @endif>Non Aktif</option>
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
