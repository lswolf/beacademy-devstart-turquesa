@extends('layouts.main')
@section('title', $title)
@section('content')

<div class="shop-title mt-3">
  <h4 class="mb-3">{{$product->name}}</h4>
  <div class="shop-subtitle">
    <a href="/">Home</a><span>></span><span class="detalhe">Produto: {{$product->name}} </span>
    <hr>
  </div>
</div>
<div class=" container" style=" border-radius:5px;  margin-top:50px;  background: #ffff;">
    <div class="row marcador align-items-center">
      <div class="col mx-auto text-center">
        <img class="rounded-4 " src="{{asset('storage/'.$product->photo)}}" alt=""  style="width:250px">
      </div>
      <div class="col">
        <div style="width: 422px; margin-left: 50px ;">
          <h1 class="mt-3">{{$product->name}}</h1>
          <img class="mt-2" src="/img/estrelas.png" alt="">
          <h2 class="mt-4">R$ {{number_format($product->sale_price, 2, ',', '.' )}}</h2>
          <p class="mt-5">FORMAS DE PARCELAMENTO:</p>
          <p class="mt-2">1x sem juros de R$ {{number_format($product->sale_price, 2, ',', '.' )}}</p>
          <div class="d-grid mt-5">
            <form action="{{route('addcart')}}" method="post">
              {{csrf_field()}}
              <input type="hidden" name='id' value="{{$product->id}}">
              <button type="submit" class="btn btn-info" style="margin-top: 10px; margin-botton: 10px">Adicionar produto no carrinho</button><br>
            </form>
            <br>
          </div>
        </div>

      </div>
    </div>
  </div>


<div class="mt-4 container rounded" style="background: #ffff; ">
  <div class="d-grid gap-2">
    <h4 class="mt-5 " style="margin-left: 20px;">Descrição:</h4>
    <p class="mb-5" style="margin-left: 20px;">{{$product->description}}</p>
  </div>
</div>
<section class=" container mt-5 section-books mb-5">
  <h2>Livros da mesma categoria</h2>
  <div class="d-flex  flex-wrap">
    @foreach($referecias as $product)
    <div class="mt-4 filho " style="margin-left:10px ;">

      <div class="irma text-center">
        <img src="{{asset('storage/'.$product->photo)}}" width="100px" height="150px" alt="">
        <div class="mt-5">
          <a class="mt-5" href="">{{$product->name}}</a>
          <div>
            <img class="mt-4" src="/img/estrelas.png" alt="">
          </div>
          <h3 class="mt-4">R$ {{number_format($product->sale_price, 2, ',', '.' )}}</h3>
        </div>
        <a href="{{route('products.show_item',$product->id)}}" class="btn btn-outline-dark mt-5" style="width:200px">Ver mais</a>


      </div>
    </div>
    @endforeach

  </div>
</section>




@endsection