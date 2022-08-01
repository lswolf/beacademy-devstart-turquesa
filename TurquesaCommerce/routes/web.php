<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\PaymentController;
use App\Http\Controllers\ProductController;
use App\Models\Payment;
use Illuminate\Support\Facades\Route;
use App\Models\Product;
use Illuminate\Support\Facades\Request;

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

//Route::get('/', function () {
//  return view('layouts.home');
//});


Route::prefix('products')->group(function () {
    Route::delete('/delete/{id}', [ProductController::class, 'delete'])->name('products.delete')->middleware('can:admin');
    Route::put('/{id}', [ProductController::class, 'update'])->name('products.update');
    Route::match(['get', 'post'], '/edit/{id}', [ProductController::class, 'edit'])->name('products.edit')->middleware('can:admin');
    Route::match(['get', 'post'], '/show-item/{id}', [ProductController::class, 'show_item'])->name('products.show_item');
    Route::match(['get', 'post'], '/create', [ProductController::class, 'create'])->name('products.create')->middleware('can:admin');
    Route::match(['get', 'post'], '/store', [ProductController::class, 'store'])->name('products.store')->middleware('can:admin');
    Route::match(['get', 'post'], '/', [ProductController::class, 'index'])->name('products.index');
    Route::match(['get', 'post'], '/pesquisa', [ProductController::class, 'search'])->name('products.search');
    Route::match(['get', 'post'], '/products-item', [ProductController::class, 'products_item'])->name('products.products_item');
    Route::match(['get', 'post'], '/products-item/{idcategory?}', [ProductController::class, 'products_item'])->name('products.products_item_id');
});


Route::prefix('categoria')->group(function () {
    Route::match(['get', 'post'], '', [CategoryController::class, 'index'])->name('category.index')->middleware('can:admin');
    Route::match(['get', 'post'], '/create', [CategoryController::class, 'create'])->name('category.create')->middleware('can:admin');
    Route::match(['get', 'post'], '/store', [CategoryController::class, 'store'])->name('category.store')->middleware('can:admin');
    Route::delete('/{id}', [CategoryController::class, 'destroy'])->name('category.destroy')->middleware('can:admin');
    Route::match(['get', 'post'], '/edit/{id}', [CategoryController::class, 'edit'])->name('category.edit')->middleware('can:admin');
    Route::put('/update/{id}', [CategoryController::class, 'update'])->name('category.update')->middleware('can:admin');
});

Route::prefix('admin')->group(function () {
    Route::match(['get', 'post'], '/show/{id}', [AdminController::class, 'show'])->name('users.show');
    Route::get('/users', [AdminController::class, 'index'])->name('users.index');
    Route::put('/edituser/{id}', [AdminController::class, 'update_user'])->name('users.update_user');
    Route::delete('/{id}', [AdminController::class, 'destroy'])->name('users.destroy');
    Route::match(['get', 'post'], '/user-order/{id}', [AdminController::class, 'user_order'])->name('users.user-order');
    Route::match(['get', 'post'],'/pedido/editar/{id}', [AdminController::class, 'order_edit'])->name('users.order_edit');
    Route::put( '/pedido/update/{id}', [AdminController::class, 'order_update'])->name('users.order_update');
    Route::delete( '/pedido/{id}', [AdminController::class, 'order_del'])->name('users.order_del');
});


Route::prefix('users')->group(function () {

    Route::match(['get', 'post'], '/user/store', [UserController::class, 'store'])->name('users.store')->middleware('auth');
    Route::put('/edit/{id}', [UserController::class, 'update'])->name('users.update');
    Route::match(['get', 'post'], '/perfil/create', [UserController::class, 'profile_create'])->name('users.profile_create');
    Route::match(['get', 'post'], '/perfil', [UserController::class, 'profile'])->name('users.profile');
    Route::match(['get', 'post'], '/orders', [OrderController::class, 'index'])->name('orders.index');
});;

Route::prefix('carrinho')->group(
    function () {

        Route::match(['get', 'post'], '', [CartController::class, 'viewCart'])->name('viewcart');
        Route::match(['get', 'post'], '/adicionar', [CartController::class, 'addcart'])->name('addcart');
        Route::delete('/delete', [CartController::class, 'deleteCart'])->name('cartdelete');
    }
);


Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return redirect('/');
    })->name('dashboard');
});

Route::get('/contato', [ContactController::class, 'viewForm'])->name('contact.contact');


/*          PayPal Api Routes                                       */
Route::post('pay', [PaymentController::class, 'pay'])->name('payment');
Route::get('success', [PaymentController::class, 'success']);
Route::get('error', [PaymentController:: class, 'error']);