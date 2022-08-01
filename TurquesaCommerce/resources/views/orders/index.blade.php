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
        <th scope="col">DATA PEDIDO</th>
      </tr>
    </thead>

    <tbody class="text-center">
      @foreach ($orders as $order)
      <tr>
        <th scope="row">{{ $order['id'] }}</th>
      <td>
        @foreach ($products as $prod)
            @if ($prod['id'] == $order['id'])
            <img width="100" height="100" src="{{asset('storage/'.$prod['photo'])}}"> {{ $prod['name'] }} <br>
            @endif
        @endforeach
      </td>
      <td>
        @if ($order['status'] == 'approved')
          Aprovado
        @endif
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