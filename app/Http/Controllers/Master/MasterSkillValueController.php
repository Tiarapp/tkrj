<?php

namespace App\Http\Controllers\Master;

use App\Models\Master\MasterSkillValue;
use Illuminate\Http\Request;

class MasterSkillValueController extends MasterController
{
    /**
     * index
     *
     * @return void
     */
    public function index()
    {
        $breadcrumbs = [['link' => "home", 'name' => "Home"], ['name' => "Data Master"], ['name' => "Skill Value"]];
        $MasterSkillValue = MasterSkillValue::latest()->paginate(10);

        return view('content.Master.SkillValue.data_skill', [
            'breadcrumbs' => $breadcrumbs,
            'skill' => $MasterSkillValue
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
            'skill_value'     => 'required',
            'status_aktif'   => 'required'
        ]);

        $masterskillvalue = MasterSkillValue::create([
            // 'image'     => $image->hashName(),
            'skill_value'     => $request->skill_value,
            'status_aktif'   => $request->status_aktif
        ]);

        if($masterskillvalue){
            //redirect dengan pesan sukses
            return redirect()->route('master.skillvalue.list')->with(['succes' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.skillvalue.list')->with(['error' => 'Data Gagal Disimpan!']);
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
            'skill_value'     => 'required',
            'status_aktif'   => 'required'
        ]);

        //get data MasterSkillValue by ID
        $masterskillvalue = MasterSkillValue::findOrFail($id);

        if($request->file('image') == "") {

            $masterskillvalue->update([
                'skill_value'     => $request->skill_value,
                'status_aktif'   => $request->status_aktif
            ]);

        } else {

            $masterskillvalue->update([
                // 'image'     => $image->hashName(),
                'skill_value'     => $request->skill_value,
                'status_aktif'   => $request->status_aktif
            ]);

        }

        if($masterskillvalue){
            //redirect dengan pesan sukses
            return redirect()->route('master.skillvalue.list')->with(['success' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('master.skillvalue.list')->with(['error' => 'Data Gagal Diupdate!']);
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
