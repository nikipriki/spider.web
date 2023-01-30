<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Putovanje extends Model
{
    use HasFactory;

    protected $table = "putovanje";
    public $timestamps = false;

    public function korisnici()
    {
        return $this->hasMany(Student::class);
    }
    public function dogadjaj()
    {
        return $this->belongsTo(Dogadjaj::class);
    }
    public function ima_mesta()
    {

        if ($this->dogadjaj->broj_mesta > $this->broj_mesta) {
            return true;
        }
        return false;
    }
    public function povecaj_popunjena()
    {
        if ($this->ima_mesta()) {
            $this->broj_mesta++;
            $this->save();
            return true;
        }
        return false;
    }
    public function smanji_popunjena()
    {
        if ($this->ima_mesta()) {
            $this->broj_mesta--;
            $this->save();
            return true;
        }
        return false;
    }
}