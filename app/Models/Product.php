<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    //
    protected $fillable = [
        'product_code', 'name', 'description', 'price',
    ];

    public function customFieldValues()
    {
        return $this->hasMany(ProductCustomFieldValue::class);
    }
}
