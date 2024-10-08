<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'subtitle',
        'description',
        'price',
        'image',
        'note'
    ];

    public function getFrenchPrice() {
        $price = $this->price / 100;

        return number_format($price, 2, ',', ' ') . ' €';
    }
}
