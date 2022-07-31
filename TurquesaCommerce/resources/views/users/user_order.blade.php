@extends('layouts.main')
@section('title', 'pedidos usuarios')
@section('content')
<div class="container">
<div>
      <h4>Compras reservadas</h4>
       @if ($reserv->count() == 0)
        <p>Não a nenhum produto reservado</p>
       
        @endif
      @forelse ($reserv as $order)
      
     
      <h5> Pedido: {{ $order->id }} </h5>
      <h5> Criado em: {{ $order->created_at->format('d/m/Y H:i') }} </h5>

        <table class="table">
          <thead>
            <tr>
              
              <th>Produto</th>
              <th>nome</th>
              <th>Valor</th>
              
            </tr>
          </thead>
          <tbody>
            @php
            $total_order = 0;
            @endphp
            @foreach ($order->order_product_items as $order_product)
            @php
            $total_product = $order_product->value ;
            $total_order += $total_product;
            @endphp 
            
            
            <tr>
              <td>
                <img width="100" height="100" src="{{asset('storage/'.$order_product->product->photo)}}">
                
              </td>
              <td>{{ $order_product->product->name}}</td>
              <td>R$ {{ number_format($order_product->value, 2, ',', '.') }}</td>
              
            </tr>
            @endforeach
          </tbody>
          <tfoot>
            <tr>
              <td colspan="3"></td>
              <td><strong>Total do pedido</strong></td>
              <td>R$ {{ number_format($total_order, 2, ',', '.') }}</td>
            </tr>
          </tfoot>
        </table>
      </form>
       @endforeach
    </div>
    <div>
      <h4>Compras concluídas</h4>
      @if ($aproved->count() == 0)
        <p>Você ainda não fez nenhuma compra..</p>
       
        @endif
      @forelse ($aproved as $order)
      <h5> Pedido: {{ $order->id }} </h5>
      <h5> Criado em: {{ $order->created_at->format('d/m/Y H:i') }} </h5>

        <table class="table">
          <thead>
            <tr>
              
              <th>Produto</th>
              <th>nome</th>
              <th>Valor</th>
              <th>id</th>
              
            </tr>
          </thead>
          <tbody>
            @php
            $total_order = 0;
            @endphp
            @foreach ($order->order_product_items as $order_product)
            @php
            $total_product = $order_product->value ;
            $total_order += $total_product;
            @endphp
            <tr>
              <td>
                <img width="100" height="100" src="{{asset('storage/'.$order_product->product->photo)}}">
                
              </td>
              <td>{{ $order_product->product->name}}</td>
              <td>R$ {{ number_format($order_product->value, 2, ',', '.') }}</td>
              <td>{{ $order_product->id}}</td>
              <td><a href="{{ route('users.order_edit', $order_product->id) }}" class="btn btn-info edit-btn">Editar</a>
          <form action="{{ route('users.order_del', $order_product->id) }}" method="post">
            @csrf
            @method('delete')
            <button type="submit" class="btn btn-danger delet-btn">Deletar</button>
          </form>
        </td>
              
            </tr>
            @endforeach
          </tbody>
          <tfoot>
            <tr>
              <td colspan="3"></td>
              <td><strong>Total do pedido</strong></td>
              <td>R$ {{ number_format($total_order, 2, ',', '.') }}</td>
            </tr>
          </tfoot>
        </table>
      </form>
       @endforeach
    </div>
</div>

@endsection