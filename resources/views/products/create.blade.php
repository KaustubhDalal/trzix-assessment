@extends('layouts.app')

@section('content')
    <div style="max-width: 600px; margin: auto;">
        <h2 style="text-align: center;">Add Product</h2>

        <p style="text-align: right;">
            <a href="{{ route('products.index') }}">← Back to Product List</a>
        </p>

        @if ($errors->any())
            <div style="color: red; margin-bottom: 15px;">
                @foreach ($errors->all() as $error)
                    <div>{{ $error }}</div>
                @endforeach
            </div>
        @endif
        <form method="POST" action="{{ route('products.store') }}" style="border: 1px solid #ccc; padding: 20px; border-radius: 8px;">
            @csrf
            <div style="margin-bottom: 10px;">
                <label><strong>Product Code</strong></label><br>
                <input type="text" name="product_code" value="{{ old('product_code') }}" style="width: 100%;">
            </div>
            <div style="margin-bottom: 10px;">
                <label><strong>Name</strong></label><br>
                <input type="text" name="name" value="{{ old('name') }}" style="width: 100%;">
            </div>
            <div style="margin-bottom: 10px;">
                <label><strong>Description</strong></label><br>
                <textarea name="description" style="width: 100%;">{{ old('description') }}</textarea>
            </div>
            <div style="margin-bottom: 10px;">
                <label><strong>Price (₹)</strong></label><br>
                <input type="number" step="0.01" name="price" value="{{ old('price') }}" style="width: 100%;">
            </div>
            <h4 style="margin-top: 20px;">Custom Fields</h4>
            @foreach ($customFields as $field)
                <div style="margin-bottom: 10px;">
                    <label><strong>{{ $field->name }}</strong></label><br>
                    @if ($field->type === 'text')
                        <input type="text" name="custom_fields[{{ $field->id }}]" style="width: 100%;">
                    @elseif ($field->type === 'number')
                        <input type="number" name="custom_fields[{{ $field->id }}]" style="width: 100%;">
                    @endif
                </div>
            @endforeach
            <div style="margin-top: 20px; text-align: right;">
                <button type="submit" style="padding: 8px 16px;">Save</button>
                <a href="{{ route('products.index') }}" style="margin-left: 10px;">Cancel</a>
            </div>
        </form>
    </div>
@endsection
