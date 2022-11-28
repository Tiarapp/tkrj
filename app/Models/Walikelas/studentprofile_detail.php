<?php

namespace App\Models\Walikelas;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class studentprofile_detail extends Model
{
    use HasFactory;
    protected $table = 'nilai_studentprofile_detail';

    protected $fillable = [
        'id', 'indikator', 'nilai', 'master_indikator_studentprofile_id', 'nilai_studentprofile_id', 'created_at', 'updated_at'
    ];
}
