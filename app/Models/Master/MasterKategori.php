<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterKategori extends Model
{
    use HasFactory;

    protected $table = 'master_kategoris';

    protected $fillable = [
        'nama_kategori', 'status_aktif', 'keterangan'
    ];

    public function perkembangan()
    {
        return $this->hasMany(MasterPerkembangan::class, 'kategori_id', 'id');
    }
}
