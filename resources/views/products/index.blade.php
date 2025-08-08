@extends('layouts.app')

@section('content')
    <h2>Product List</h2>

    @if (session('success'))
        <p style="color: green;">{{ session('success') }}</p>
    @endif

   <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 15px;">
      <a href="{{ route('products.create') }}">Add New Product</a>
      <a href="{{ route('custom-fields.create') }}">+ Define Custom Field</a>
      <a href="{{ route('invoices.create') }}" class="btn btn-primary">Create Invoice</a>
      <a href="{{ route('invoices.index') }}" class="btn btn-primary">show Invoices</a>
  </div>
    <table border="1" cellpadding="8" cellspacing="0" width="100%" style="margin-top: 15px;">
        <thead>
            <tr>
                <th>ID</th>
                <th>Code</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price (₹)</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @forelse ($products as $product)
                <tr>
                    <td>{{ $product->id }}</td>
                    <td>{{ $product->product_code }}</td>
                    <td>{{ $product->name }}</td>
                    <td>{{ $product->description }}</td>
                    <td>{{ $product->price }}</td>
                    <td>
                        <a href="{{ route('products.edit', $product->id) }}">Edit</a> |
                        <form action="{{ route('products.destroy', $product->id) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" onclick="return confirm('Delete this product?')">Delete</button>
                        </form>
                    </td>
                </tr>
            @empty
                <tr><td colspan="6">No products found.</td></tr>
            @endforelse
        </tbody>
    </table>

    <div style="margin-top: 20px;">
        {{ $products->links() }}
    </div>
@endsection
