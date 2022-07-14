<?php

use App\Http\Controllers\AdminController;
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

Route::match(['get', 'post'], '/',  [ProductController::class, 'home'])->name('index.home');
Route::prefix('products')->group(function () {
    Route::delete('/delete/{id}', [ProductController::class, 'delete'])->name('products.delete');
    Route::put('/{id}', [ProductController::class, 'update'])->name('products.update');
    Route::match(['get', 'post'], '/edit/{id}', [ProductController::class, 'edit'])->name('products.edit');
    Route::match(['get', 'post'], '/show-item/{id}', [ProductController::class, 'show_item'])->name('products.show_item');
    Route::match(['get', 'post'], '/create', [ProductController::class, 'create'])->name('products.create');
    Route::match(['get', 'post'], '/store', [ProductController::class, 'store'])->name('products.store');
    Route::match(['get', 'post'], '/', [ProductController::class, 'index'])->name('products.index');
});


Route::prefix('categoria')->group(function () {
    Route::match(['get', 'post'], '', [CategoryController::class, 'index'])->name('category.index');
    Route::match(['get', 'post'], '/create', [CategoryController::class, 'create'])->name('category.create');
    Route::match(['get', 'post'], '/store', [CategoryController::class, 'store'])->name('category.store');
    Route::delete('/{id}', [CategoryController::class, 'destroy'])->name('category.destroy');
    Route::match(['get', 'post'], '/edit/{id}', [CategoryController::class, 'edit'])->name('category.edit');
    Route::put('/update/{id}', [CategoryController::class, 'update'])->name('category.update');
});

Route::prefix('admin')->group(function () {
    Route::match(['get', 'post'], '/show/{id}', [AdminController::class, 'show'])->name('users.show');
    Route::get('/users', [AdminController::class, 'index'])->name('users.index');
    Route::put('/edituser/{id}', [AdminController::class, 'update_user'])->name('users.update_user');
    Route::delete('/{id}', [AdminController::class, 'destroy'])->name('users.destroy');
});


Route::prefix('users')->group(function () {

    Route::match(['get', 'post'], '/user/store', [UserController::class, 'store'])->name('users.store')->middleware('auth');
    Route::put('/edit/{id}', [UserController::class, 'update'])->name('users.update');
    Route::match(['get', 'post'], '/perfil/create', [UserController::class, 'profile_create'])->name('users.profile_create');
    Route::match(['get', 'post'], '/perfil', [UserController::class, 'profile'])->name('users.profile');
});





Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return redirect('/');
    })->name('dashboard');
});