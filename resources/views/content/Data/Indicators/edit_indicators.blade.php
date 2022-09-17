<!-- Modal -->
<div class="modal fade text-start" id="modal_edit" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel33">Edit Data Indicators</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="form_edit" action="{{route('data.indicators.edit')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                {{ method_field('PUT') }}
                <div class="modal-body">
                    {{-- ID DATA --}}
                    <input type="hidden" id="id" name="id">

                    <div class="mb-1">
                        <label class="form-label" for="basic-default-name">AREAS OF DEVELOPMENT </label>
                        <input type="text" class="form-control" name="edit_areas" id="edit_areas" required/>

                    </div>

                    <div class="mb-1">
                        <label class="form-label" for="basic-default-name">DEVELOPMENT ACHIEVEMENT </label>
                        <input type="text" class="form-control" name="edit_development" id="edit_development" required/>

                    </div>

                    <div class="mb-1">
                        <label class="form-label" for="basic-default-name">INDICATORS </label>
                        <input type="text" class="form-control" name="edit_indicators" id="edit_indicators" required/>
                    </div>

                    <div class="mb-1">
                        <label class="form-check-label mb-50" for="customSwitch111">Status</label>
                        <div class="form-check form-switch form-check-success">
                            <input type="checkbox" name="status" class="form-check-input" id="status" />
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
