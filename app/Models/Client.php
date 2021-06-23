<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    use HasFactory;
    protected $fillable = [
        'id',
        'name',
        'last_name',
        'email',
        'cellphone',
    ];

    public function history(){
        return $this->belongsToMany('App\Models\History');
    }

}
