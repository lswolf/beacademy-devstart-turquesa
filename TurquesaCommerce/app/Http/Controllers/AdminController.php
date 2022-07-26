<?php

namespace App\Http\Controllers;

use App\Models\Client;
use App\Models\User;
use App\Models\Product;
use App\Models\CardProduct;
use App\Models\Order;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function index()
    {
        $users = Client::with('user')->get();



        return view('users.index', compact('users'));
    }
    public function show($id)
    {

        $users = Client::with('user')->get();
        return view('users.show', compact('users', 'id'));
    }
    public function update_user(Request $request, $id)
    {

        Client::findOrfail($request->id)->update($request->all());
        User::findOrfail($request->id)->update($request->all());

        return redirect()->back();
    }
    public function destroy($id)
    {
        $user = User::find($id);
        $user->delete();

        return redirect()->route('users.index');
    }
        public function user_order($id)
        {
            
            $user = CardProduct::all();
            $pedido = Order::all();
            $produto =Product::all();
            return view('users.user_order',compact('user','pedido','id','produto'));

        }

}