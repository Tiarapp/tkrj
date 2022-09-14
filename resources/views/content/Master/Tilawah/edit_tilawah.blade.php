<!-- Modal -->
<div class="modal fade text-start" id="edit{{$t->id}}" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Edit Data Tilawah</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="form_edit" action="{{route('master.tilawah.edit')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                {{ method_field('PUT') }}
                <div class="modal-body">
                    {{-- ID DATA --}}
                    <input type="hidden" id="id" name="id" value="{{$t->id}}">
                    <div class="row">
                        <div class="col-md-5 col-12">
                            <div class="input-group mb-2">
                                <span class="input-group-text" id="basic-addon1">Tilawati</span>
                                <input type="text" class="form-control" name="edit_tilawati" value="{{$t->tilawati}}"/>
                            </div>
                        </div>
                        <div class="col-md-5 col-12">
                            <div class="input-group mb-2">
                                <span class="input-group-text" id="basic-addon1">Halaman</span>
                                <input type="text" class="form-control" name="edit_jumlah" value="{{$t->jumlah_halaman}}"/>
                            </div>
                        </div>
                        <div class="col-md-2 col-12">
                            {{-- <label class="form-check-label mb-50" for="customSwitch111">Status</label> --}}
                            <div class="form-check form-switch form-check-success" style="margin-top: 10px">
                                <input type="checkbox" class="form-check-input" name="status" id="customSwitch111" @if ($t->status == "Aktif") checked @endif />
                                <label class="form-check-label" for="customSwitch111">
                                <span class="switch-icon-left"><i data-feather="check"></i></span>
                                <span class="switch-icon-right"><i data-feather="x"></i></span>
                                </label>
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
