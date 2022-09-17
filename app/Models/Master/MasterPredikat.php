<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterPredikat extends Model
{
    use HasFactory;
    protected $table = 'master_predikat';

    protected $fillable = [
        'kode', 'keterangan'
    ];
}
