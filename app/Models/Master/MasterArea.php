<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterArea extends Model
{
    use HasFactory;

    protected $table = 'master_areas_dev';

    protected $fillable = [
        'nama_area', 'status'
    ];
}
