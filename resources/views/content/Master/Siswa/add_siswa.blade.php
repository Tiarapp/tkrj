<!-- Modal -->
<div class="modal fade text-start" id="xlarge" tabindex="-1" aria-labelledby="myModalLabel16" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Tambah Data Siswa</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <section id="input-sizing">
                    <div class="row match-height">
                        <form id="jquery-val-form" action="{{route('master.siswa.add')}}" method="post" enctype="multipart/form-data">
                            {{csrf_field()}}
                            {{-- AMBIL ID TAHUN AJARAN --}}
                            <input type="hidden" class="form-label" name="thn_ajaran_masuk" id="thn_ajaran_masuk" required>
                            <label class="form-label" for="basic-default-name">Tahun Ajaran PPDB</label>
                            <select class="basic-select2" id="thn_ppdb" name="thn_ppdb" required>
                                <option value="" selected disabled>Pilih Tahun Ajaran</option>
                                @foreach ($tahunajaran_ppdb as $tp)
                                    <option value="{{$tp->id}}">{{$tp->mulai}}/{{$tp->selesai}}</option>
                                @endforeach
                            </select>
                            <table class="table mb-0" id="table_siswa_ppdb">
                                <thead>
                                    <tr>
                                        <th>NIS</th>
                                        <th>NIK</th>
                                        <th>Nama</th>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary">Simpan</button>
                            </div>
                        </form>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>
