<?php

namespace App\Http\Controllers\Master;

use App\Models\Master\MasterKategori;
use App\Models\Master\MasterPerkembangan;
use App\Models\Master\MasterSkillValue;
use Illuminate\Http\Request;

class MasterPerkembanganController extends MasterController
{
    /**
     * index
     *
     * @return void
     */
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Perkembangan"]];
        $perkembangan = MasterPerkembangan::latest()->paginate(10);
        $kategori = MasterKategori::all();

        // dd($perkembangan->kategori);

        return view('content.Master.Perkembangan.data_perkembangan', [
            'breadcrumbs' => $breadcrumbs,
            'perkembangan' => $perkembangan,
            'kategori' => $kategori
        ]);
    }

    /**
    * store
    *
    * @param  mixed $request
    * @return void
    */
    public function store(Request $request)
    {
        $this->validate($request, [
            // 'image'     => 'required|image|mimes:png,jpg,jpeg',
            'perkembangan'     => 'required',
            'kategori_id'   => 'required',
            'status_aktif'   => 'required'
        ]);

        $masterskillvalue = MasterPerkembangan::create([
            // 'image'     => $image->hashName(),
            'perkembangan'     => $request->perkembangan,
            'kategori_id'     => $request->kategori_id,
            'status_aktif'   => $request->status_aktif
        ]);

        if($masterskillvalue){
            //redirect dengan pesan sukses
            return redirect()->route('master.perkembangan.list')->with(['succes' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.perkembangan.list')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    /**
    * edit
    *
    * @param  mixed $MasterSkillValue
    * @return void
    */
    public function edit(MasterSkillValue $MasterSkillValue)
    {
        return view('master_skill_value.edit', compact('MasterSkillValue'));
    }


    /**
    * update
    *
    * @param  mixed $request
    * @param  mixed $MasterSkillValue
    * @return void
    */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'perkembangan'     => 'required',
            'kategori_id'     => 'required',
            'status_aktif'   => 'required'
        ]);

        //get data MasterSkillValue by ID
        $perkembangan = MasterPerkembangan::findOrFail($id);


        if($request->file('image') == "") {

            $perkembangan->update([
                'perkembangan'     => $request->perkembangan,
                'kategori_id'     => $request->kategori_id,
                'status_aktif'   => $request->status_aktif
            ]);

        } else {

            $perkembangan->update([
                // 'image'     => $image->hashName(),
                'perkembangan'     => $request->perkembangan,
                'kategori_id'     => $request->kategori_id,
                'status_aktif'   => $request->status_aktif
            ]);

        }

        if($perkembangan){
            //redirect dengan pesan sukses
            return redirect()->route('master.perkembangan.list')->with(['succes' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.perkembangan.list')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }

    /**
    * destroy
    *
    * @param  mixed $id
    * @return void
    */
    public function destroy($id)
    {
        $masterskillvalue = MasterSkillValue::findOrFail($id);
        // Storage::disk('local')->delete('public/blogs/'.$blog->image);
        $masterskillvalue->delete();

        if($masterskillvalue){
            //redirect dengan pesan sukses
            return redirect()->route('MasterSkillValue.index')->with(['success' => 'Data Berhasil Dihapus!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('MasterSkillValue.index')->with(['error' => 'Data Gagal Dihapus!']);
        }
    }

}
