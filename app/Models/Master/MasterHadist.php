<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterHadist extends Model
{
    use HasFactory;
    protected $table = 'master_hadist';

    protected $fillable = [
        'id', 'hadist', 'status', 'created_at', 'updated_at'
    ];
}
