<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterDevAchiev extends Model
{
    use HasFactory;

    protected $table = 'master_dev_achiev';

    protected $fillable = [
        'area_id', 'nama_achievment', 'status'
    ];

    public function area()
    {
        return $this->belongsTo(MasterArea::class, 'area_id', 'id');
    }
}
