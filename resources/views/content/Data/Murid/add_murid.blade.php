<!-- Modal -->
{{-- <div class="modal fade text-start" id="add_datamurid" tabindex="-1" aria-labelledby="myModalLabel16" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-xl"> --}}
<div class="modal fade" id="add_datamurid" tabindex="-1" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable modal-xl ">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Tambah Murid</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('data.datamurid.add')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12 col-12">
                            <div class="row">
                                <input type="hidden" name="thn_ajaran_select" id="thn_ajaran_select" value="">
                                <input type="hidden" name="kelas_select" id="kelas_select" value="">
                                <div class="col-md-6 col-12">
                                    <label class="form-label font-medium-5" for="basicSelect">Kelas Asal</label>
                                    <select class="select2-size-sm form-select select2-hidden-accessible" name="kelas_awal" id="kelas_awal">
                                        <option selected disabled>Pilih Kelas</option>
                                        <option value="Baru">Murid Baru</option>
                                        @foreach ($kelas as $ka)
                                            <option value="{{$ka->id}}">{{$ka->nama_kelas}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-md-6 col-12" id="thn_msk" hidden>
                                    <label class="form-label font-medium-5" for="basicSelect">Tahun Masuk Siswa</label>
                                    <select class="select2-size-sm form-select select2-hidden-accessible" id="filter_tahun_masuk" name="thn_msk_siswa" required>
                                        <option selected disabled>Pilih Tahun Ajaran</option>
                                        @foreach ($tahunajaran as $ta)
                                            <option value="{{$ta->id}}">{{$ta->tahun_ajaran}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <table class="table mb-0" id="murid_awal">
                                <thead>
                                    <tr>
                                        <th style="width: 15px"></th>
                                        <th style="width: 30px">Absen</th>
                                        <th style="width: 100px">NIS</th>
                                        <th style="width: 250px">Nama</th>
                                        <th>Kelas</th>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
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
