<?php

use App\Http\Controllers\CategoryController;
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

Route::get('/', function () {
    return view('welcome');
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