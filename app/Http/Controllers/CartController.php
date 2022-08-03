<?php

namespace App\Http\Controllers;


use App\Models\CardProduct;
use App\Models\Order;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CartController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function viewCart()
    {

        $order = Order::where(
            [
                'status' => 'RE',
                'user_id' => Auth()->id()
            ]
        )->get();


        return view('cart.cart', compact('order'));
    }
    public function addcart()
    {
        $this->middleware('VerifyCsrfToken');
        $req = Request();
        $idproduct = $req->input('id');
        $product = Product::find($idproduct);
        if (empty($product->id)) {
            $req->session()->flash('mensagem-falha', 'produto nao encontrado em loja!');
            return redirect()->route('viewCart');
        }
        $iduser = Auth::id();
        $idorder = Order::consultaId([
            'user_id' => $iduser,
            'status' => 'RE'

        ]);
        if (empty($idorder)) {
            $order_new = Order::create([
                'user_id' => $iduser,
                'status' => 'RE'

            ]);
            $idorder = $order_new->id;
        }

        $user = new CardProduct();
        $user->order_id = $idorder;
        $user->product_id = $idproduct;
        $user->value = $product->sale_price;
        $user->status = 'RE';
        $user->save();


        return redirect('/carrinho')->with('cartAdd', 'produto adicionado no carinho com sucesso!');
    }
    public function deleteCart()
    {
        $this->middleware('VerifyCsrfToken');

        $req = Request();
        $idorder           = $req->input('order_id');
        $idproduct          = $req->input('product_id');
        $delete_one_item = (bool)$req->input('item');
        $iduser          = Auth::id();

        $idorder = Order::consultaId([
            'id'      => $idorder,
            'user_id' => $iduser,
            'status'  => 'RE' // Reservada
        ]);

        if (empty($idorder)) {
            $req->session()->flash('mensagem-falha', 'Pedido não encontrado!');
            return redirect()->route('viewcart');
        }

        $where_product = [
            'order_id'  => $idorder,
            'product_id' => $idproduct
        ];

        $product = CardProduct::where($where_product)->orderBy('id', 'desc')->first();
        if (empty($product->id)) {
            $req->session()->flash('mensagem-falha', 'Produto não encontrado no carrinho!');
            return redirect()->route('viewcart');
        }

        if ($delete_one_item) {
            $where_product['id'] = $product->id;
        }
        CardProduct::where($where_product)->delete();

        $check_order = CardProduct::where([
            'order_id' => $product->order_id
        ])->exists();

        if (!$check_order) {
            Order::where([
                'id' => $product->order_id
            ])->delete();
        }

        $req->session()->flash('mensagem-sucesso', 'Produto removido do carrinho com sucesso!');

        return redirect()->route('viewcart')->with('cartRemove', 'Produto removido do carrinho com sucesso!');
    }
}