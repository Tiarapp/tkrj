<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterSkillValue extends Model
{
    use HasFactory;

    /**
    * fillable
    *
    * @var array
    */

    protected $table = 'master_skill_value';

    protected $fillable = [
        'skill_value', 'status_aktif'
    ];
}
