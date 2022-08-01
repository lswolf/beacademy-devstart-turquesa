<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CardProduct;
use App\Models\User;
use App\Models\Order;
use App\Models\Product;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{
    public function index()
    {

        $orders = Order::all()
                ->where('user_id', Auth::id())
                ->whereIn('status', 'approved');


        $orders = json_decode($orders, true);

        $orders_id = [];
        foreach($orders as $ord) {
            ARRAY_PUSH($orders_id, $ord['id']); 
        }

        $products = DB::table('orders')
            ->join('card_products', 'orders.id', '=', 'card_products.order_id')
            ->join('products', 'card_products.product_id', '=', 'products.id')
            ->addSelect(DB::raw('DISTINCT products.name'), 'orders.id', 'orders.status', 'products.photo')
            ->wherein('orders.id', $orders_id)
            ->get();

        $products = json_decode($products, true);

        return view('orders.index', compact('orders', 'orders_id', 'products'));

    }
}
