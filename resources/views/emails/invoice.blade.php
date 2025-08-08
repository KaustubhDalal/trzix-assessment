@component('mail::message')
# Invoice #{{ $invoice->invoice_no }}

Hi {{ $invoice->customer->name }},

Please find attached your invoice dated {{ $invoice->date }}.

Thanks,<br>
{{ config('app.name') }}
@endcomponent
