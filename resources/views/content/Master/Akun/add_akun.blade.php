<!-- Modal -->
<div class="modal fade text-start" id="inlineForm" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Tambah Data Akun</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="jquery-val-form" action="{{route('master.akun.add')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="modal-body">
                    <div class="mb-1">
                        <label class="form-label" for="login-email">Pendaftaran</label>
                        <select class="select2 form-select" name="level" id="level" required>
                            <option value="" selected disabled>Pilih Jawaban</option>
                            <option value="Guru">Guru</option>
                            <option value="Walikelas">Walikelas</option>
                            {{-- <option value="Wali Kelas">Wali Kelas</option>
                            <option value="Siswa">Siswa</option> --}}
                        </select>
                    </div>
                    <div class="mb-1">
                        <label class="form-label" for="login-email">Nomor Induk</label>
                        <select class="select2 form-select" name="nomor_induk" id="nomor_induk" required>

                        </select>
                    </div>
                    <div class="mb-1">
                        <div class="d-flex justify-content-between">
                            <label class="form-label" for="login-password">Password</label>
                        </div>
                        <div class="input-group input-group-merge form-password-toggle">
                            <input class="form-control form-control-merge" id="login-password" type="password" name="password" placeholder="············" aria-describedby="login-password" tabindex="2" />
                            <span class="input-group-text cursor-pointer"><i data-feather="eye"></i></span>
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
