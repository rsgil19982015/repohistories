<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class History extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'oxygen',
        'temperature',
        'frecuency',
    ];
    public function Client(){
        return $this->belongsTo('App\Models\Client');
    }

}
