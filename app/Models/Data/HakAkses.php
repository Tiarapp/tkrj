<?php

namespace App\Models\Data;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HakAkses extends Model
{
    use HasFactory;

    protected $table = 'hak_akses';
    protected $fillable = [
        'id',
        'user_id',
        'guru_id',
        'tahunajaran_id',
        'level',
        'created_at',
        'updated_at'
    ];
    
    
    public function id_user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}

