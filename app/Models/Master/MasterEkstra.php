<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterEkstra extends Model
{
    use HasFactory;
    protected $table = 'master_ekstra';

    protected $fillable = [
        'id', 'ekstra', 'status', 'created_at', 'updated_at'
    ];
}
