<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterDoaharian extends Model
{
    use HasFactory;
    protected $table = 'master_doa_harian';

    protected $fillable = [
        'id', 'doa_harian', 'status', 'urutan', 'created_at', 'updated_at'
    ];
}
