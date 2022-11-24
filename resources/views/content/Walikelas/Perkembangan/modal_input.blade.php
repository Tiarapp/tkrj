<!-- Modal -->
<div class="modal fade text-start" id="inlineForm{{$m->id}}" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <label >Data Perkembangan {{$m->nama}}</label>

                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('walikelas.perkembangan.add')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="modal-body">
                    <div class="row d-flex align-items-end">
                        {{-- ID Murid --}}
                        <input type="hidden" name="id_murid" id="id_murid" value="{{$m->id}}">
                        @foreach ($master_perkembangan as $m_p)
                            <div class="col-md-6 col-6">
                                <div class="mb-1">
                                    <label class="form-label" for="basic-default-name">{{$m_p->perkembangan}}</label>
                                    {{-- ID NILAI --}}
                                    <input class="data_nilai" type="hidden" id="id_nilai_{{$m_p->id}}_{{$m->id}}" name="id_nilai[{{$m_p->id}}]" value="">

                                    <input type="text" class="form-control data_nilai" name="nilai[{{$m_p->id}}]" id="nilai_{{$m_p->id}}_{{$m->id}}"/>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>
