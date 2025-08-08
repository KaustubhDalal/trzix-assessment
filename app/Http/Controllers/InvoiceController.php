<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Invoice;
use App\Models\InvoiceItem;
use PDF;
use Illuminate\Support\Facades\Mail;
use App\Mail\InvoiceMail;

class InvoiceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $invoices = Invoice::with('customer')->latest()->paginate(10);
        return view('invoices.index', compact('invoices'));
    }

    public function exportPdf(Invoice $invoice)
    {
        $invoice->load('items.product', 'items.fieldValues.customField', 'customer');

        $pdf = PDF::loadView('invoices.pdf', compact('invoice'));
        return $pdf->download('invoice_' . $invoice->invoice_no . '.pdf');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $customers = \App\Models\Customer::all();
        $products = \App\Models\Product::all();
        $customFields = \App\Models\CustomField::all();

        return view('invoices.create', compact('customers', 'products', 'customFields'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'invoice_no' => 'required|unique:invoices',
            'customer_id' => 'required|exists:customers,id',
            'date' => 'required|date',
            'items' => 'required|array|min:1',
            'items.*.product_id' => 'required|exists:products,id',
            'items.*.quantity' => 'required|integer|min:1',
            'items.*.rate' => 'required|numeric|min:0',
            'items.*.amount' => 'required|numeric|min:0',
        ]);

        // Step 1: Create Invoice
        $invoice = Invoice::create([
            'invoice_no' => $request->invoice_no,
            'customer_id' => $request->customer_id,
            'date' => $request->date,
            'total_amount' => 0, // We'll calculate below
        ]);

        $total = 0;

        // Step 2: Save line items
        foreach ($request->items as $item) {
            $line = InvoiceItem::create([
                'invoice_id' => $invoice->id,
                'product_id' => $item['product_id'],
                'quantity' => $item['quantity'],
                'rate' => $item['rate'],
                'amount' => $item['amount'],
            ]);

            $total += $line->amount;

            // Step 3: Save custom fields for the line item
            if (isset($item['custom_fields'])) {
                foreach ($item['custom_fields'] as $fieldId => $value) {
                    \App\Models\InvoiceItemFieldValue::create([
                        'invoice_item_id' => $line->id,
                        'custom_field_id' => $fieldId,
                        'value' => $value,
                    ]);
                }
            }
        }

        // Step 4: Update invoice with total
        $invoice->update(['total_amount' => $total]);
        
        return redirect()->route('invoices.index')->with('success', 'Invoice created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $invoice = Invoice::with(['customer', 'lineItems.product', 'lineItems.customFieldValues.customField'])->findOrFail($id);
        return view('invoices.show', compact('invoice'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }

    public function email(Invoice $invoice)
    {
        $invoice->load('items.product', 'items.fieldValues.customField', 'customer');
        if (!$invoice->customer || !$invoice->customer->email) {
            return back()->with('error', 'Customer email not found.');
        }
        Mail::to($invoice->customer->email)->send(new InvoiceMail($invoice));
        return back()->with('success', 'Invoice emailed successfully.');
    }
}
