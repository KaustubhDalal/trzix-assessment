<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\AdminAuthController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CustomFieldController;
use App\Http\Controllers\ProductFieldValueController;
use App\Http\Controllers\InvoiceController;

Route::get('/', function () {
    return redirect('/admin/login');
}); 

//added fallback route if user hit admin/dashboard without login it would redirect user to login page
Route::get('/login', function () {
    return redirect('/admin/login');
})->name('login');

// admin routes
Route::get('/admin/register', [AdminAuthController::class, 'showRegister'])->name('admin.register');
Route::post('/admin/register', [AdminAuthController::class, 'register']);

Route::get('/admin/login', [AdminAuthController::class, 'showLogin'])->name('admin.login');
Route::post('/admin/login', [AdminAuthController::class, 'login']);

Route::get('/admin/dashboard', function () {
    return view('admin.dashboard');
})->middleware('auth:admin')->name('admin.dashboard');

Route::post('/admin/logout', [AdminAuthController::class, 'logout'])->name('admin.logout');

// Products Route
Route::middleware('auth:admin')->group(function () {
    Route::resource('products', ProductController::class);
});


// Custom Fields Route
Route::middleware('auth:admin')->group(function () {
    Route::resource('custom-fields', CustomFieldController::class);
});

// Route::middleware('auth:admin')->group(function () {
//     Route::get('/custom-fields/create', [CustomFieldController::class, 'create'])->name('custom-fields.create');
//     Route::post('/custom-fields', [CustomFieldController::class, 'store'])->name('custom-fields.store');
// });

// Invoice roite
Route::middleware('auth:admin')->group(function () {
    Route::resource('invoices', InvoiceController::class);
});

Route::get('invoices/{invoice}/pdf', [InvoiceController::class, 'exportPdf'])->name('invoices.exportPdf');
Route::get('invoices/{invoice}/email', [InvoiceController::class, 'email'])->name('invoices.email');


