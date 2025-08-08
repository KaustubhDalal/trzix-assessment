# Laravel Product & Invoice Management Assessment

This project is built with Laravel 12 as part of an assessment to implement a product and invoice management system with dynamic custom fields and key features like PDF export and email sending.


## Features

### Product Module
- Create, Read, Update, Delete (CRUD) for products
- Fields: product_code, name, description, price
- Support for dynamic custom fields per product
- Seeded 500+ products using Laravel factories for testing

### Invoice Module
- CRUD operations for invoices
- Add multiple dynamic line items
- Support custom fields for each line item
- Export invoice as PDF using barryvdh/laravel-dompdf
- Send invoice via email with PDF attachment

### Authentication & Authorization
- Routes protected by `auth:admin` middleware

## Setup Instructions

1. Clone the repository  
   git clone <repository-url>
   cd <project-folder>

2. composer install

3. php artisan key:generate

4. php artisan migrate --seed

5. php artisan serve

6. Import database : laravel.sql file

7. working demo : 
- https://www.loom.com/share/9cd88ac6401a4385832483af12c9ffa1?sid=a0320194-faef-45bd-8a9f-b5f6552abb33
- https://www.loom.com/share/d073561bbbdc40179c85409b9cfdfbe1?sid=b1801093-3bff-40a8-8dc4-fec9d81a9a04