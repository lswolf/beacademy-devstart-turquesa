<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CardProduct extends Model
{
    protected $fillable = [
        'order_id',
        'product_id',
        'value ',
        'status'
    ];
    public function product()
    {
        return $this->belongsTo(Product::class, 'product_id', 'id');
    }
    use HasFactory;
}