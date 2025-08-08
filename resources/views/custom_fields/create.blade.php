@extends('layouts.app')

@section('content')
<h2 style="margin-bottom: 20px;">Add Custom Field</h2>
<p style="text-align: right;">
    <a href="{{ route('products.index') }}">← Back to Product List</a>
</p>
@if ($errors->any())
    <div style="color: red; margin-bottom: 15px;">
        <ul style="padding-left: 20px;">
            @foreach ($errors->all() as $e)
                <li>{{ $e }}</li>
            @endforeach
        </ul>
    </div>
@endif

<form method="POST" action="{{ route('custom-fields.store') }}" style="max-width: 400px;">
    @csrf
    <div style="margin-bottom: 15px;">
        <label for="name">Field Name:</label><br>
        <input type="text" name="name" id="name" style="width: 100%; padding: 6px;">
    </div>
    <div style="margin-bottom: 15px;">
        <label for="type">Field Type:</label><br>
        <select name="type" id="type" style="width: 100%; padding: 6px;">
            <option value="text">Text</option>
            <option value="number">Number</option>
        </select>
    </div>
    <div style="margin-bottom: 20px;">
        <label for="validation">Validation Rules (optional):</label><br>
        <label><input type="checkbox" name="is_required"> Required Field</label><br><br>
    </div>
    <button type="submit" style="padding: 8px 15px;">Save</button>
</form>
@endsection