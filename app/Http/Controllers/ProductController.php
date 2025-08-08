<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Models\CustomField;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $products = Product::latest()->paginate(10);
        return view('products.index', compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $customFields = CustomField::all();
        return view('products.create', compact('customFields'));
    }

    /**
     * Store a newly created resource in storage.
     */
   public function store(Request $request)
    {
        $rules = [
            'product_code' => 'required|unique:products',
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'price' => 'required|numeric|min:0',
        ];

        // Addding custom field validation from DB
        $customFields = \App\Models\CustomField::all();

        foreach ($customFields as $field) {
            if ($field->validation) {
                $rules["custom_fields.{$field->id}"] = $field->validation;
            }
        }

        $validated = $request->validate($rules);

        // Creating product here
        $product = Product::create($request->only(['product_code', 'name', 'description', 'price']));

        // Saving custom field values
        foreach ($request->input('custom_fields', []) as $fieldId => $value) {
            \App\Models\ProductFieldValue::create([
                'product_id' => $product->id,
                'custom_field_id' => $fieldId,
                'value' => $value,
            ]);
        }

        return redirect()->route('products.index')->with('success', 'Product created.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Product $product)
    {
        return view('products.edit', compact('product'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Product $product)
    {
        $request->validate([
            'product_code' => 'required|unique:products,product_code,' . $product->id,
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'price' => 'required|numeric|min:0',
        ]);

        $product->update($request->all());

        return redirect()->route('products.index')->with('success', 'Product updated.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product)
    {
        $product->delete();
        return back()->with('success', 'Product deleted.');
    }
}
