<?php


use App\Http\Controllers\UserController;

use App\Http\Controllers\CategoryController;

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
    return view('layouts.home');
});

Route::prefix('categoria')->group(function () {
    Route::match(['get', 'post'], '', [CategoryController::class, 'index'])->name('category.index');
    Route::match(['get', 'post'], '/create', [CategoryController::class, 'create'])->name('category.create');
    Route::match(['get', 'post'], '/store', [CategoryController::class, 'store'])->name('category.store');
    Route::delete('/{id}', [CategoryController::class, 'destroy'])->name('category.destroy');
    Route::match(['get', 'post'], '/edit/{id}', [CategoryController::class, 'edit'])->name('category.edit');
    Route::put('/update/{id}', [CategoryController::class, 'update'])->name('category.update');
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

Route::get('/users/{id}/edit', [UserController::class, 'edit'])->name('users.edit');
Route::get('/users/create', [UserController::class, 'create'])->name('users.create');
Route::post('/user', [UserController::class, 'store'])->name('users.store');
Route::get('/users', [UserController::class, 'index'])->name('users.index');
Route::put('/users/edit/{id}', [UserController::class, 'update'])->name('users.update');
Route::delete('/users/{id}', [UserController::class, 'destroy'])->name('users.destroy');



