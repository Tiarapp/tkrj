<!-- Modal -->
<div class="modal fade text-start" id="inlineForm" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Tambah Data Pengajar</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('data.pengajar.add')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="modal-body">
                    {{-- ID TAHUNAJARAN --}}
                    <input type="hidden" name="add_tahunajaran" id="add_tahunajaran" value="">

                    <div class="mb-1">
                        <label class="form-label" for="basic-default-name">Guru</label>
                        <select class="select2 form-select" name="add_guru" id="add_guru" required>
                            <option value="" selected disabled>Pilih Guru</option>
                            @foreach ($guru as $g)
                                <option value="{{$g->id}}">{{$g->nama_guru}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-1">
                        <label class="form-label" for="basic-default-name">Kelas</label>
                        <select class="select2 form-select" name="add_kelas" id="add_kelas" required>
                            <option value="" selected disabled>Pilih Kelas</option>
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
