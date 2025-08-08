<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class InvoiceItemFieldValue extends Model
{
    //
    protected $fillable = ['invoice_item_id', 'custom_field_id', 'value'];

    public function customField() {
        return $this->belongsTo(CustomField::class);
    }
}
