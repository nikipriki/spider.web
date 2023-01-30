<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Korisnik extends Model
{
    use HasFactory;
    protected $table = "korisnik";
    public $timestamps = false;

    public function dogadjaj()
    {
        return $this->belongsTo('App\Models\Putovanje');
    }
}