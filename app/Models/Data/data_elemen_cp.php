<?php

namespace App\Models\Data;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class data_elemen_cp extends Model
{
    use HasFactory;
    protected $table = 'data_elemen_cp';
    protected $fillable = [
        'cp_id', 'nama_elemen','narasi', 'status','tahunajaran_id',
    ];

    public function cp()
    {
        return $this->belongsTo(data_cp::class, 'cp_id', 'id');
    }
}
