<?php

namespace App\Models\Data;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class data_cbi extends Model
{
    use HasFactory;
    protected $table = 'data_cbi';

    protected $fillable = [
        'id', 'cbi', 'status','tahunajaran_id', 'created_at', 'updated_at'
    ];
}
