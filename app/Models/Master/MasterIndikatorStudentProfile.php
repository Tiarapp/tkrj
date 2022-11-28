<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterIndikatorStudentProfile extends Model
{
    use HasFactory;
    protected $table = 'master_indikator_studentprofile';

    protected $fillable = [
        'id', 'indikator_studentprofile', 'status', 'created_at', 'updated_at'
    ];
}
