@extends('layouts.main')
@section('title', 'Procurar Produto')
@section('content')

<div class="shop-title mt-3">
  <h4 class="mb-3">Procurar Produto</h4>
  <div class="shop-subtitle">
    <a href="/">Home</a><span>></span><span class="detalhe">Search </span>
    <hr>
  </div>
</div>


<div class="d-flex container">
  <section class="mb-5 mt-5 section-books" style="margin-left: 50px;">
    <div class="d-flex flex-wrap ">
    @foreach($products as $product)
    <div class="filho" style="margin-left:10px; margin-top:10px;">
      <div class="irma text-center" style="padding-left: 10px;">
        <img src="{{asset('storage/'.$product->photo)}}" width="100px" height="150px" alt="">
        <div class="mt-5">
          <a class="mt-5" href="">{{$product->name}}</a>
          <div>
            <img class="mt-4" src="/img/estrelas.png" alt="">
          </div>
          <h3 class="mt-3">R$ {{number_format($product->sale_price, 2, ',', '.' )}}</h3>            
        </div>
        <a href="{{route('products.show_item',$product->id)}}" class="btn btn-outline-dark mt-5" style="width:200px">Ver mais</a>
      </div>
    </div>
   @endforeach
  </section>
</div>
  @if(count($products) == 0 && $search)
    <div class="text-center">
      <img src="/img/error.svg" alt="imagem de erro" width="10%"><br>        
      <p class="mt-5">Não foi possível encontrar nenhum produto com <b> "{{ $search }}" </b>! </p>
      <a class="btn btn-primary" href="/products/products-item" >Ver todos</a>
    </div><br>        
      @elseif(count($products) == 0)
        <p>Não há produtos!</p>
      @endif
    </section>
  </div>
@endsection