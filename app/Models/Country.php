<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    use HasFactory;

    protected $fillable = [
       'continent_id','country_name','capital_city'
    ];
    public function continent(){
        return $this->belongsTo(Continent::class,'continent_id','id');
    }

    
}
