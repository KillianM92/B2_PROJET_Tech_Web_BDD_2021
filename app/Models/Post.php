<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    // //nom de la table
    // protected $table = 'posts';
    // //cle primaire
    // public $primaryKey = 'id';
    // //timestamps
    // public $timestamps = false;
    public function user(){
        return $this->belongsTo('App\Models\User');
    }
}
