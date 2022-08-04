@extends('layouts.main')
@section('title','carrinho')
@section('content')

<div class="shop-title">
  <h4>Fazer compras</h4>
  <div class="shop-subtitle">
    <a href="/">Home</a><span>></span><a href="/products/products-item">Comprar</a><span>></span><span class="detalhe">Carrinho de compras</span>
    <hr> 
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
    <h5>Pedido nº - {{$orders->id}}</h5>
    <h6>Criado em : {{$orders->created_at->format('d/m/y H:i')}}</h6>
<div class="col-9">
  <div class="card text-center">
    <div class="card-body">
      <div style="width: 768px;">
        <table style="width: 768px; margin-top:20px;">
        
          <thead>
            <tr>
              <th>Produto</th>
              <th>Quantidade</th>
              <th>Total Produto</th>
              <th>Excluir</th>
            </tr>
          </thead>
          <tbody>

          <!-- PRODUTO -->
            @php
            $total_pedido = 0
            @endphp
            @foreach($orders->order_items as $order_item)
              <td>
                <div class="d-flex" style="margin-top:25px ;">
                  <img src="{{asset('storage/'.$order_item->product->photo)}}" alt="" style="width:100px; height: 100%;">
                  <div>
                    <h6>&ensp; {{$order_item->product->name}}</h6>
                    <h5>&ensp; R$ {{number_format($order_item->product->sale_price,2,',','.')}}</h5>
                  </div>
                </div>
              </td>
              
              <!-- QUANTIDADE -->
              <td class="center-align">
                <div class="center-align d-flex">
                  <form id="form-delete-product" method="POST" action="{{route('cartdelete')}}">
                    {{csrf_field()}}
                    @method('DELETE')
                    <input type="hidden" name='order_id' value="{{$orders->id}}">
                    <input type="hidden" name='product_id' value="{{$order_item->product_id}}">
                    <input type="hidden" name="item" value="1">
                    <button type="submit" class="btn btn-sm">
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
                      </svg>
                    </button>
                  </form>
                  <span>&ensp; {{$order_item->qtd}} &ensp;</span>
                  <form id="form-add-product" method="post" action="{{route('addcart')}}">
                    {{csrf_field()}}
                    <input type="hidden" name="id" value="{{$order_item->product_id}}">
                    <button type="submit" class="btn btn-sm">
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
                      </svg>
                    </button>
                  </form>
                </div>
              </td>

              <!--  TOTAL PRODUTO -->
              @php
              $total_product=$order_item->valores;
              $total_pedido +=$total_product
              @endphp
              <td>
                <h5 style="font-weight: 700px; font-size:18px;">R$ {{number_format($total_product,2,',','.')}} </h5>
              </td>


              <!-- Excluir -->
              <td>
                <form id="form-delete-product" method="POST" action="{{route('cartdelete')}}">
                  {{csrf_field()}}
                  @method('DELETE')
                  <input type="hidden" name='order_id' value="{{$orders->id}}">
                  <input type="hidden" name='product_id' value="{{$order_item->product_id}}">
                  <input type="hidden" name="item" value="0">
                  <button class="btn btn-sm" type="submit" >
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                      <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                      <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                    </svg>
                  </button>
                </form>
              </td>

            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>

<br><br><br>

        <!--  TOTAL CARRINHO -->
<div class="col-3">   
  <div class="card text-center">
    <div class="card-body">       
      <h5><b>Total do carrinho:</b></h5><br>
      <h5>R$ {{number_format($total_pedido,2,',','.')}}</h5>
      <form action="{{ route('make.payment') }}" method="post">
        {{ csrf_field() }}
      
        <input type="hidden" name='order_id' value="{{$orders->id}}">
        <input type="hidden" name='products' value="{{$order}}">
        <input type="hidden" name="amount" value="{{$total_pedido}}"><br>
        <button class="btn btn-primary" type="submit">
          Concluir a compra
        </button>
      </form>
      <br>     
    </div>
  </div>    
</div>

<div class="container">
  <div class="mb-5 mt-5">       
    <button class=" btn btn-primary "><a href="{{route('index.home')}}">Continuar comprando</a></button> 
  </div>
</div>  
    


    @empty
    <div style="height:400px ;" class="text-center">
      <div style="margin-top:50px ;">
        <h5 style="font-size:50px ;">Ops....</h5><br>
        <svg xmlns="http://www.w3.org/2000/svg" width="60" height="60" fill="currentColor" class="bi bi-cart-x" viewBox="0 0 16 16">
          <path d="M7.354 5.646a.5.5 0 1 0-.708.708L7.793 7.5 6.646 8.646a.5.5 0 1 0 .708.708L8.5 8.207l1.146 1.147a.5.5 0 0 0 .708-.708L9.207 7.5l1.147-1.146a.5.5 0 0 0-.708-.708L8.5 6.793 7.354 5.646z"/>
          <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
        </svg>
        <h5 style="font-size:50px ;">Seu carrinho esta vazio!</h5>  <br>    
        <button class=" btn btn-primary "><a href="{{route('index.home')}}">Adicionar produtos agora</a></button> 
      </div>
    </div> 
    @endforelse

  </div>
</div>
@endsection
</div>
