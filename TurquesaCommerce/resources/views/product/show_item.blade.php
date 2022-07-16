@extends('layouts.main')
@section('title', $title)
@section('content')
<div class="d-flex  mb-4" style="margin-left: 100px ;  margin-top:50px; ">
  <div>
    <img src="{{asset('storage/'.$product->photo)}}" alt="" width="400px" style="height:400px">
  </div>
  <div style="width: 422px; margin-left: 50px ;">
    <h1>{{$product->name}}</h1>
    <h4>{{$product->description}}</h4>
    <img src="/img/estrela.png" alt="">
    <h2>R$ {{number_format($product->sale_price, 2, ',', '.' )}}</h2>
    <p>1x sem juros de R$ {{number_format($product->sale_price, 2, ',', '.' )}}</p>
    <a href="">VER AS FORMAS DE PARCELAMENTO</a>
    <div class="d-grid">
      <form action="" method="post">
        {{csrf_field()}}
        <input type="hidden" name='id' value="{{$product->id}}">
        <button type="submit" class="btn btn-info" style="margin-top: 20px; margin-left:10px;">Adicionar produto no carrinho</button>

      </form>
    </div>
  </div>
</div>




@endsection