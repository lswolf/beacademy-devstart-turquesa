@extends('layouts.main')
@section('title', 'pedido numero:'.$product->id)
@section('content')

<div class="container">
<h1>Editar produto</h1>
<form action="{{route('users.order_update',$product->id)}}" method="post" >
    @csrf
    @method('put')
    <div class="mb-3">
      <label for="value" class="form-label">valor</label><br>
      <input type="text" name="value" id="value" class="form-control" value="{{$product->value}}" placeholder=" escreva o nome do produto">
    </div>
    

    <input type="submit" class="btn btn-primary">

  </form>
</div>

@endsection