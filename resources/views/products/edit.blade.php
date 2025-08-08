@extends('layouts.app')

@section('content')
    <h2 style="margin-bottom: 20px;">Edit Product</h2>
    <p style="text-align: right; margin-bottom: 20px;">
        <a href="{{ route('products.index') }}">← Back to Product List</a>
    </p>
    @if ($errors->any())
        <div style="color: red; margin-bottom: 20px;">
            @foreach ($errors->all() as $error)
                <div>{{ $error }}</div>
            @endforeach
        </div>
    @endif

    <form method="POST" action="{{ route('products.update', $product->id) }}" style="max-width: 600px;">
        @csrf
        @method('PUT')
        <div class="form-group" style="margin-bottom: 15px;">
            <label style="font-weight: bold;">Product Code</label><br>
            <input type="text" name="product_code" value="{{ old('product_code', $product->product_code) }}" style="width: 100%;">
        </div>
        <div class="form-group" style="margin-bottom: 15px;">
            <label style="font-weight: bold;">Name</label><br>
            <input type="text" name="name" value="{{ old('name', $product->name) }}" style="width: 100%;">
        </div>
        <div class="form-group" style="margin-bottom: 15px;">
            <label style="font-weight: bold;">Description</label><br>
            <textarea name="description" rows="4" style="width: 100%;">{{ old('description', $product->description) }}</textarea>
        </div>
        <div class="form-group" style="margin-bottom: 20px;">
            <label style="font-weight: bold;">Price (₹)</label><br>
            <input type="number" step="0.01" name="price" value="{{ old('price', $product->price) }}" style="width: 100%;">
        </div>
        <div style="margin-top: 10px;">
            <button type="submit" style="padding: 8px 20px;">Update</button>
            <a href="{{ route('products.index') }}" style="margin-left: 10px;">Cancel</a>
        </div>
    </form>
@endsection
