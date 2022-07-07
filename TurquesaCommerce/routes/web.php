<?php

use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::delete('/products/delete/{id}', [ProductController::class, 'delete'])->name('products.delete');
Route::put('/products/{id}', [ProductController::class, 'update'])->name('products.update');
Route::match(['get', 'post'], '/products/edit/{id}', [ProductController::class, 'edit'])->name('products.edit');
Route::match(['get', 'post'], '/products/create', [ProductController::class, 'create'])->name('products.create');
Route::match(['get', 'post'], '/products/store', [ProductController::class, 'store'])->name('products.store');
Route::match(['get', 'post'], '/products/', [ProductController::class, 'index'])->name('products.index');

Route::get('/', function () {
    return view('layouts.main');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});