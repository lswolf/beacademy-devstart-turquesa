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

Route::match(['get', 'post'], '/product/create', [ProductController::class, 'create'])->name('product.create');
Route::match(['get', 'post'], '/product/store', [ProductController::class, 'store'])->name('product.store');
Route::match(['get', 'post'], '/product/show', [ProductController::class, 'show'])->name('product.show');
Route::match(['get', 'post'], '/product/edit', [ProductController::class, 'edit'])->name('product.edit');
Route::delete('/product/delete', [ProductController::class, 'delete'])->name('product.delete');

Route::get('/', function () {
    return view('welcome');
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
