@extends('layouts.app')

@section('content')
    <h2>Invoices</h2>
  <p style="text-align: right;">
      <a href="{{ route('products.index') }}">← Back to Product List</a>
  </p>
    <p style="text-align: right;">
        <a href="{{ route('invoices.create') }}">+ Create Invoice</a>
    </p>

    @if (session('success'))
        <p style="color: green;">{{ session('success') }}</p>
    @endif

    <table border="1" cellpadding="8" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Invoice No</th>
                <th>Customer</th>
                <th>Date</th>
                <th>Total (₹)</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @forelse ($invoices as $invoice)
                <tr>
                    <td>{{ $invoice->invoice_no }}</td>
                    <td>{{ $invoice->customer->name }}</td>
                    <td>{{ \Carbon\Carbon::parse($invoice->date)->format('d M Y') }}</td>
                    <td>{{ number_format($invoice->total_amount, 2) }}</td>
                    <td>
                        <!-- <a href="{{ route('invoices.show', $invoice->id) }}">View</a> | -->
                        <a href="{{ route('invoices.exportPdf', $invoice->id) }}">PDF</a> |
                        <a href="{{ route('invoices.email', $invoice->id) }}">Email</a>
                    </td>
                </tr>
            @empty
                <tr><td colspan="5">No invoices found.</td></tr>
            @endforelse
        </tbody>
    </table>

    <div style="margin-top: 15px;">
        {{ $invoices->links() }}
    </div>
@endsection
