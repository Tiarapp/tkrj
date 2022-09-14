<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterTahfidz extends Model
{
    use HasFactory;
    protected $table = 'master_tahfidz';

    protected $fillable = [
        'id', 'surat', 'jumlah_ayat', 'hari', 'status', 'created_at', 'updated_at'
    ];
}
