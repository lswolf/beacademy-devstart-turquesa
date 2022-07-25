@extends('layouts.main')
@section('title','carrinho')
@section('content')

<div class="shop-title">
  <h4>Fazer compras</h4>
  <div class="shop-subtitle">
    <a href="/">Home</a><span>></span><a href="/products/products-item">Comprar</a><span>></span><span class="detalhe">Carrinho de compras</span>
  </div>
</div>
<div class="container">
  <div class="row">

    @if(session()->has('cartAdd'))
    <div class="alert alert-success">
      <strong>{{session()->get('cartAdd')}}</strong>
    </div>
    @endif

    @if(session()->has('cartRemove'))
    <div class="alert alert-danger">
      <strong>{{session()->get('cartRemove')}}</strong>

    </div>
    @endif

    @if(session()->has('mensagem-falha'))
    <div class="alert alert-danger">
      <strong>{{session()->get('mensagem-falha')}}</strong>
    </div>
    @endif


    @forelse($order as $orders)
    <h5>Pedido{{$orders->id}}</h5>
    <h5>Criado em{{$orders->created_at->format('d/m/y H:i')}}</h5>


    <div class="d-flex table-cart">
      <div style="width: 768px;">

        <table style="width: 768px; margin-top:20px;">
          <thead>

            <tr>
              <th>Produto</th>
              <th>Quantidade</th>
              <th>total</th>
            </tr>

          </thead>

          <tbody>

            @php
            $total_pedido = 0
            @endphp

            @foreach($orders->order_items as $order_item)


            <tr>

              <td>

                <div class="d-flex" style="margin-top:25px ;">
                  <img src="{{asset('storage/'.$order_item->product->photo)}}" alt="" style="width:100px; height: 100%;">
                  <div>
                    <h6>{{$order_item->product->name}}</h6>
                    <h5>R$ {{number_format($order_item->product->sale_price,2,',','.')}}</h5>
                  </div>
                </div>
              </td>
              
              <td class="center-align">
                <div class="center-align d-flex">
                  <form id="form-delete-product" method="POST" action="{{route('cartdelete')}}">
                    {{csrf_field()}}
                    @method('DELETE')

                    <input type="hidden" name='order_id' value="{{$orders->id}}">
                    <input type="hidden" name='product_id' value="{{$order_item->product_id}}">
                    <input type="hidden" name="item" value="1">
                    <button type="submit" class="button-cart"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="20" fill="currentColor" class="bi bi-arrow-left-circle" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-4.5-.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z" />
                      </svg></button>

                  </form>

                  <span>{{$order_item->qtd}}</span>
                  <form id="form-add-product" method="post" action="{{route('addcart')}}">
                    {{csrf_field()}}
                    <input type="hidden" name="id" value="{{$order_item->product_id}}">
                    <button type="submit" class="button-cart"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="20" fill="currentColor" class="bi bi-arrow-right-circle" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z" />
                      </svg></button>

                  </form>



                </div>



              </td>


              @php
              $total_product=$order_item->valores;
              $total_pedido +=$total_product
              @endphp

              <td>
                <h5 style="font-weight: 700px; font-size:18px;">R$ {{number_format($total_product,2,',','.')}} </h5>
              </td>
              <td>
                <form id="form-delete-product" method="POST" action="{{route('cartdelete')}}">
                  {{csrf_field()}}
                  @method('DELETE')
                  <input type="hidden" name='order_id' value="{{$orders->id}}">
                  <input type="hidden" name='product_id' value="{{$order_item->product_id}}">
                  <input type="hidden" name="item" value="0">
                  <button type="submit" class="button-cart"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-x-circle" viewBox="0 0 16 16">
                      <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                      <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                    </svg></button>

                </form>
              </td>

            </tr>

            @endforeach

          </tbody>

        </table>
      </div>
      <div class="row section-cart">
        <h6>Total do carrinho:</h6>
        <h5>R$ {{number_format($total_pedido,2,',','.')}}</h5>
        <form action="" method="post">
          {{ csrf_field() }}
          <input type="hidden" name="request_id" value="{{$orders->id}}">
          <button type="submit">
            Concluir a compra
          </button>
        </form>
      </div>
    </div>
    <hr>
    <div class="row">
      <button class="button-direct-home"><a href="{{route('index.home')}}">Continuar comprando</a></button>


    </div>
    @empty
    <div style="height:500px ;" class="text-center">
      <div style="margin-top:200px ;">
        <h5 style="font-size:50px ;">Não a produto no carrinho...</h5>
      </div>
    </div>
    @endforelse
  </div>
</div>



@endsection