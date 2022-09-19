<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterTema extends Model
{
    use HasFactory;
    protected $table = 'master_tema';

    protected $fillable = [
        'id', 'tema', 'keterangan', 'status', 'created_at', 'updated_at'
    ];
}
