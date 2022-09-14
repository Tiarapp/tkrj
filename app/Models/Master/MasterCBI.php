<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterCBI extends Model
{
    use HasFactory;

    protected $table = 'master_cbi';

    protected $fillable = [
        'id', 'cbi', 'status', 'created_at', 'updated_at'
    ];
}
