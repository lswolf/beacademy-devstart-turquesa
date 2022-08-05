<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Srmklive\PayPal\Services\PayPal as PayPalClient;
class PayPalPaymentController extends Controller
{
    public function handlePayment(Request $request)
    {
        $product = [];
        $product['items'] = [
            [
                'name' => $request->products,
                'price' => $request->amount,
                'desc'  => '',
                'qty' => 1
            ]
            ];
        $product['invoice_id'] = $request->order_id;
        $product['invoice_description'] = "Ordem #{$product['invoice_id']} pedido";
        $product['return_url'] = route('success.payment');
        $product['cancel_url'] = route('cancel.payment');
        $product['total'] =  $request->amount;
  
        $paypalModule =  new PayPalClient;

        $res = $paypalModule->createOrder($product);
        
  
        return redirect($res['paypal_link']);
    }
   
    public function paymentCancel()
    {
        return redirect()->route('viewcart')->with('cartErr', 'Compra Cancelada!');
    }
  
    public function paymentSuccess(Request $request)
    {
        $paypalModule = new ExpressCheckout();
        $response = $paypalModule->getExpressCheckoutDetails($request->token);
  
        if (in_array(strtoupper($response['ACK']), ['SUCCESS', 'SUCCESSWITHWARNING'])) {
            return redirect()->route('viewcart')->with('cartAdd', 'Compra efetuada com sucesso!');
        }
  
        return redirect()->route('viewcart')->with('cartErr', 'Compra Cancelada!');
    }
}