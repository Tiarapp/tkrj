<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterTilawah extends Model
{
    use HasFactory;
    protected $table = 'master_tilawah';

    protected $fillable = [
        'id', 'tilawati', 'jumlah_halaman', 'keterangan', 'status', 'created_at', 'updated_at'
    ];
}
