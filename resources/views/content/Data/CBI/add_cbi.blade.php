<!-- Modal -->
<div class="modal fade text-start" id="inlineForm" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Tambah Data CBI Fonik</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('data.cbi.add')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="modal-body">
                    <div class="mb-1">
                        <label class="form-label" for="basic-default-name">CBI Fonik</label>
                        <input type="text" class="form-control" name="cbi" id="cbi" placeholder="Nama CBI Fonik" required/>
                    </div>
                    <div class="col-md-6 col-12">
                        <div class="mb-1">
                            <label class="form-label" for="basic-default-name">Tahun Ajaran</label>
                            <select class="basic-select2" name="ta_id" required>
                                <option >Pilih Tahun Ajaran</option>
                                @foreach($tahun_ajaran as $ta)
                                <option value="{{$ta->id}}">{{$ta->tahun_ajaran}}</option>
                                @endforeach
                            </select>
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
