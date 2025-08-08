<!-- @extends('layouts.app')

@section('content')
    <h2>Invoice Details</h2>
  <p style="text-align: right;">
      <a href="{{ route('products.index') }}">← Back to Product List</a>
  </p>
    <p><strong>Invoice No:</strong> {{ $invoice->invoice_no }}</p>
    <p><strong>Customer:</strong> {{ $invoice->customer->name }}</p>
    <p><strong>Date:</strong> {{ \Carbon\Carbon::parse($invoice->date)->format('d M Y') }}</p>
    <p><strong>Total:</strong> ₹{{ number_format($invoice->total_amount, 2) }}</p>
    <hr>
    <h4>Line Items</h4>
    <table border="1" cellpadding="6" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Product</th>
                <th>Qty</th>
                <th>Rate</th>
                <th>Amount</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($invoice->lineItems as $item)
                <tr>
                    <td>{{ $item->product->name }}</td>
                    <td>{{ $item->quantity }}</td>
                    <td>{{ number_format($item->rate, 2) }}</td>
                    <td>{{ number_format($item->amount, 2) }}</td>
                </tr>
                @if ($item->customFieldValues->count())
                    <tr>
                        <td colspan="4">
                            <strong>Custom Fields:</strong>
                            <ul>
                                @foreach ($item->customFieldValues as $cfv)
                                    <li>{{ $cfv->customField->name }}: {{ $cfv->value }}</li>
                                @endforeach
                            </ul>
                        </td>
                    </tr>
                @endif
            @endforeach
        </tbody>
    </table>
    <p style="margin-top: 20px;">
        <a href="{{ route('invoices.exportPdf', $invoice->id) }}">📄 Export as PDF</a> |
        <a href="{{ route('invoices.email', $invoice->id) }}">📧 Email to Customer</a> |
        <a href="{{ route('invoices.index') }}">← Back to Invoices</a>
    </p>
@endsection -->
