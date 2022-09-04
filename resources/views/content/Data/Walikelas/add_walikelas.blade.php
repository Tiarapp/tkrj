<!-- Modal -->
<div class="modal fade text-start" id="inlineForm" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Tambah Wali Kelas</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('data.walikelas.add')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                {{-- ID TAHUNAJARAN DAN ID JENJANG --}}
                    <input type="hidden" name="add_id_tahunajaran" id="add_id_tahunajaran">
                    <input type="hidden" name="add_id_jenjang" id="add_id_jenjang">
                <div class="modal-body">
                    <div class="mb-1">
                        <label class="form-label" for="basic-default-name">Pilih Guru</label>
                        <select class="select2-size-sm form-select" name="add_id_guru" required>
                            <option value="" disabled selected>Pilih Guru</option>
                            @foreach ($guru as $g)
                                <option value="{{$g->id}}">{{$g->nama_guru}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-1">
                        <label class="form-label" for="basic-default-name">Pilih Kelas</label>
                        <select class="select2-size-sm form-select" name="add_id_kelas" required>
                            <option value="" disabled selected>Pilih Kelas</option>
                            @foreach ($kelas as $k)
                                <option value="{{$k->id}}">{{$k->nama_kelas}}</option>
                            @endforeach
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
