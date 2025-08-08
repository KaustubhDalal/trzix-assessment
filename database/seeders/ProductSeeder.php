<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Product;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        for ($i = 1; $i <= 500; $i++) {
            Product::create([
                'product_code' => 'P' . $i,
                'name' => 'Product ' . $i,
                'description' => 'Sample product description',
                'price' => number_format(rand(100, 9999) / 100, 2),
            ]);
        }
    }
}
