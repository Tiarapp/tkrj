<!-- Modal -->
<div class="modal fade text-start" id="inlineForm" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Tambah Data Tema Proyek</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('walikelas.proyek.temaproyek.add')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="modal-body">
                    <div class="row d-flex align-items-end">

                        <div class="mb-1">
                            <label class="form-label" for="basic-default-name">Kelas</label>
                            <select class="select2 form-select" name="kelas_id" required>
                                <option value="" selected disabled>Pilih Kelas</option>
                                @foreach ($walikelas as $w)
                                    <option value="{{ $w->kelas_id }}">{{$w->kelas}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="mb-1">
                            <label class="form-label" for="basic-default-name">Tema Proyek</label>
                            <textarea class="form-control narasi" name="tema_proyek" id="tema_proyek" rows="3"></textarea>
                        </div>

                        <div class="mb-1">
                            <label class="form-label" for="basic-default-name">Deskripsi Tema</label>
                            <textarea class="form-control narasi" name="deskripsi" id="deskripsi" rows="3"></textarea>
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
