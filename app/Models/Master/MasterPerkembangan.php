<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterPerkembangan extends Model
{
    use HasFactory;

    /**
    * fillable
    *
    * @var array
    */

    protected $table = 'master_perkembangan';

    protected $fillable = [
        'perkembangan', 'kategori_id', 'status_aktif'
    ];

    public function id_kategori()
    {
        return $this->belongsTo('App\Models\Master\MasterKategori', 'kategori_id', 'id');
    }
}
