@extends('layouts.main')
@section('title', 'Meus Pedidos')
@section('content')

<div class="container">
  <br>
  <h1>Meus Pedidos</h1>

  <table class="table">
    <thead class="text-center">
      <tr>
        <th scope="col">ID PEDIDO</th>
        <th scope="col">PRODUTO</th>
        <th scope="col">STATUS</th>
        <th>TOTAL</th>
        <th scope="col">DATA PEDIDO</th>
      </tr>
    </thead>

    <tbody class="text-center">

      @foreach ($orders as $order)
      @php $total_order = 0; @endphp
        @foreach ($Allproducts as $all)
            @if ($all['id'] == $order['id'])
              @php
                $total_product = $all['sale_price'];
                $total_order += $total_product; 
              @endphp                
            @endif
        @endforeach

      <tr>
        <th scope="row">{{ $order['id'] }}</th>
      <td>
          @foreach ($products as $prod)
                @if ($prod['id'] == $order['id'])
                  {{ $prod['name'] }} <br>
                @endif
          @endforeach
           
      </td>
      <td>
        @if ($order['status'] == 'PA')
          Aprovado
        @endif
      </td>
      <td>
        R$ {{ number_format($total_order, 2, ',', '.') }}
      </td>
      <td>
        {{ date('d/m/Y', strtotime($order['created_at'])) }}
      </td>
      @endforeach
    </tr>
    </tbody>
  </table>
  <div class="justify-content-center pagination">
  </div>
</div>
@endsection