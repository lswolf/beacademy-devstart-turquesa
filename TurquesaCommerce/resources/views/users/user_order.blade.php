@extends('layouts.main')
@section('title', 'pedidos usuarios')
@section('content')


<div class="container">
@foreach($pedido as $pedidos)
@if($pedidos->user_id == $id)
@if($pedidos->status == "RE")
<h1>Produtos em Processo</h1>
@elseif($pedidos->status == "PA")
<h1>Produtos Pagos</h1>
@endif
<h1>{{$pedidos->created_at}}</h1>
@endif

@foreach($user as $users)
@if($pedidos->id == $users->order_id && $pedidos->user_id == $id)
<table  class="table">
<thead>
    <tr>
        <th class="table-dark">status</th>
        <th class="table-dark">value</th>
        <th class="table-dark">nome</th>
        <th class="table-dark">descrição</th>
        <th class="table-dark">id do pedido</th>
    </tr>
    </thead>
    <tbody>
    <tr>
     <td class="table-dark">{{$users->status}}</td>
<td class="table-dark">{{$users->value}}</td>
@foreach($produto as $produtos)
@if($produtos->id == $users->product_id)
<td class="table-dark">{{$produtos->name}}</td>
<td class="table-dark">{{$produtos->description}}</td>
@endif
@endforeach
<td class="table-dark">{{$users->order_id}}</td>   
    </tr>
</tbody>
</table>

@endif
@endforeach
@endforeach
</div>
@endsection