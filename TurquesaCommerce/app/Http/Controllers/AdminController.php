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
        //dd($request);
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
      $aproved = Order::where([
                'status'  => 'PA',
                'user_id' =>$id
       ])->orderBy('created_at', 'desc')->get();
    
    
      $reserv = Order::where([
                'status'  => 'RE',
                'user_id' => $id
      ])->orderBy('updated_at', 'desc')->get();
            
           
        return view('users.user_order',compact('aproved','id','reserv'));

    }

    public function order_edit($id)
    {
        
        $product= CardProduct::find($id);
        

        return view('users.user_edit_order',compact('product'));
       

    }
    public function order_update(Request $request,$id){
        

      $product =CardProduct::findOrfail($id);
      $product->value = $request->value;
       $product->update();
      
        return redirect('/admin/users'); 
    }
    public function order_del($id)
    {
        CardProduct::findOrfail($id)->delete();
        
       return redirect('/admin/users');
    } 

    public function order_del_all($id)
    {
        Order::find($id)->delete();
        
       return redirect('/admin/users');
    } 
  

}