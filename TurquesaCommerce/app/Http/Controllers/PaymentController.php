<?php

namespace App\Http\Controllers;

use App\Models\Payment;
use Illuminate\Http\Request;
use Omnipay\Omnipay;
use App\Models\User;
use App\Models\Order;
use Illuminate\Support\Facades\Auth;


class PaymentController extends Controller
{
    private $gateway;

    public function __construct()
    {
        $this->gateway = Omnipay::create('PayPal_Rest');
        $this->gateway->setClientId(env('PAYPAL_CLIENT_ID'));
        $this->gateway->setSecret(env('PAYPAL_CLIENT_SECRET'));
        $this->gateway->SetTestMode(true);
    }

    public function pay(Request $request)
    {
        try {
            $response = $this->gateway->purchase(array(
                'amount' => $request->amount,
                'currency' => env('PAYPAL_CURRENCY'),
                'returnUrl' => url('success'),
                'cancelUrl' => url('error')
            ))->send();

            if($response->isRedirect()) {
                $response->redirect();
            }   else {
                return $response->getMessage();
            }
        }   catch (\Throwable $th) {
            return $th->getMessage();
        }
    }

    public function success(Request $request)
    {
        $user = User::find(Auth::id());
        if($request->input('paymentId') && $request->input('PayerID')) {
            $transaction = $this->gateway->completePurchase(array(
                'payer_id' => $request->input('PayerID'),
                'transactionReference' => $request->input('paymentId')
            ));

            $response = $transaction->send();

            if($response->isSuccessful()) {
                $arr = $response->getData();

                $payment = new Payment();
                $payment->payment_id = $arr['id'];
                $payment->payer_id = Auth::id();
                $payment->payer_email = $user->email;
                $payment->amount = $arr['transactions'][0]['amount']['total'];
                $payment->currency = env('PAYPAL_CURRENCY');
                $payment->payment_status = $arr['state'];

                $payment->save();
                Order::where('user_id', Auth::id())
                    ->where('status', 'RE')
                    ->update(['status' => 'approved']);

                return redirect()->route('viewcart')->with('cartAdd', 'Compra efetuada com sucesso!');;

            }   else {
                return $response->getMessage();
            }
        }
        else {
            return 'Pagamento mal-sucedido';
        }
    }

    public function error()
    {
        return redirect()->route('viewcart');
    }
}
