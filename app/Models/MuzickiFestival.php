<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MuzickiFestival extends Model
{
    use HasFactory;
    protected $table = "dogadjaj";
    public $timestamps = false;

    public function putovanja()
    {
        return $this->hasMany('App\Models\Putovanje');
    }
}
