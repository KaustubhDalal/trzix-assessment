@extends('layouts.app')

@section('content')
    <h2>Create Invoice</h2>
  <p style="text-align: right;">
      <a href="{{ route('products.index') }}">← Back to Product List</a>
  </p>
    <p style="text-align: right;">
        <a href="{{ route('invoices.index') }}">← Back to Invoices List</a>
    </p>
    <form action="{{ route('invoices.store') }}" method="POST">
        @csrf

        <div>
            <label>Invoice No:</label><br>
            <input type="text" name="invoice_no" required>
        </div>

        <div>
            <label>Customer:</label><br>
            <select name="customer_id" required>
                <option value="">Select Customer</option>
                @foreach ($customers as $customer)
                    <option value="{{ $customer->id }}">{{ $customer->name }}</option>
                @endforeach
            </select>
        </div>

        <div>
            <label>Date:</label><br>
            <input type="date" name="date" value="{{ now()->toDateString() }}" required>
        </div>

        <hr>
        <h4>Invoice Line Items</h4>

        <div id="items-wrapper">
            <div class="item-block">
                <select name="items[0][product_id]" required>
                    <option value="">Select Product</option>
                    @foreach ($products as $product)
                        <option value="{{ $product->id }}" data-rate="{{ $product->price }}">
                            {{ $product->name }}
                        </option>
                    @endforeach
                </select>

                <input type="number" name="items[0][quantity]" placeholder="Qty" min="1" required>
                <input type="text" name="items[0][rate]" placeholder="Rate" readonly>
                <input type="text" name="items[0][amount]" placeholder="Amount" readonly>

                @foreach ($customFields as $field)
                    @if ($field->type == 'text')
                        <input type="text" name="items[0][custom_fields][{{ $field->id }}]" placeholder="{{ $field->name }}">
                    @elseif ($field->type == 'number')
                        <input type="number" name="items[0][custom_fields][{{ $field->id }}]" placeholder="{{ $field->name }}">
                    @endif
                @endforeach

                <hr>
            </div>
        </div>

        <button type="submit">Save Invoice</button>
    </form>
    <script>
    document.addEventListener('DOMContentLoaded', function () {
        const items = document.querySelectorAll('.item-block');
        items.forEach(item => {
            const productSelect = item.querySelector('select[name^="items"]');
            const qtyInput = item.querySelector('input[name$="[quantity]"]');
            const rateInput = item.querySelector('input[name$="[rate]"]');
            const amountInput = item.querySelector('input[name$="[amount]"]');
            productSelect.addEventListener('change', function () {
                const rate = this.options[this.selectedIndex].dataset.rate || 0;
                rateInput.value = rate;
                amountInput.value = (rate * qtyInput.value).toFixed(2);
            });
            qtyInput.addEventListener('input', function () {
                const rate = parseFloat(rateInput.value) || 0;
                const qty = parseFloat(this.value) || 0;
                amountInput.value = (rate * qty).toFixed(2);
            });
        });
    });
</script>
@endsection
