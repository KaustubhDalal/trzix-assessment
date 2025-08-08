<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductFieldValue extends Model
{
    //
    protected $fillable = [
        'product_id',
        'custom_field_id',
        'value',
    ];
}
