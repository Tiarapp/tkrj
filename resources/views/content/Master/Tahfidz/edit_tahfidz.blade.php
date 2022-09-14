<!-- Modal -->
<div class="modal fade text-start" id="edit{{$t->id}}" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Edit Data Tahfidz</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="form_edit" action="{{route('master.tahfidz.edit')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                {{ method_field('PUT') }}
                <div class="modal-body">
                    {{-- ID DATA --}}
                    <input type="hidden" id="id" name="id" value="{{$t->id}}">
                    <div class="mb-1">
                        <label class="form-label" for="basic-default-name">Nama Surat</label>
                        <input type="text" class="form-control" name="edit_surat" id="basic-default-name" value="{{$t->surat}}" placeholder="Nama Surat" required/>
                    </div>
                    <div class="mb-1">
                        <label class="form-label" for="basic-default-name">Jumlah Ayat</label>
                        <input type="number" class="form-control" name="edit_jumlah" id="basic-default-name" value="{{$t->jumlah_ayat}}" placeholder="Jumlah Ayat" required/>
                    </div>
                    <div class="mb-1">
                        <label class="form-label" for="basic-default-name">Hari</label>
                        <input type="number" class="form-control" name="edit_hari" id="basic-default-name" value="{{$t->hari}}" placeholder="Hari" required/>
                    </div>
                    <div class="mb-1">
                        <label class="form-check-label mb-50" for="customSwitch111">Status</label>
                        <div class="form-check form-switch form-check-success">
                            <input type="checkbox" name="status" class="form-check-input" id="customSwitch111" @if ($t->status == "Aktif") checked @endif />
                            <label class="form-check-label" for="customSwitch111">
                            <span class="switch-icon-left"><i data-feather="check"></i></span>
                            <span class="switch-icon-right"><i data-feather="x"></i></span>
                            </label>
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
