@extends('layouts.main')
@section('title', 'home')
@section('content')
<div class="banner">
  <img src="/img/capa-home.png" alt="">
</div>
<div class="container section-category">
  <h2>Livros</h2>
  <div id="carouselExampleControls" class="carousel" data-bs-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active ">
        <a href="{{route('products.products_item_id',['idcategory'=>1])}}"><img src="/img/categoria1.png" class=" w-20" alt="..."></a>
        <a href="{{route('products.products_item_id',['idcategory'=>2])}}">
          <img src="/img/categoria2.png" class="w-20" alt="..."></a>
        <a href="{{route('products.products_item_id',['idcategory'=>3])}}">
          <img src="/img/categoria3.png" class=" w-20" alt="..."></a>
        <a href="{{route('products.products_item_id',['idcategory'=>4])}}">
          <img src="/img/categoria4.png" class=" w-20" alt="..."></a>
      </div>
      <div class="carousel-item">
        <a href="{{route('products.products_item_id',['idcategory'=>5])}}">
          <img src="/img/categoria5.png" class=" w-20" alt="..."></a>
        <a href="{{route('products.products_item_id',['idcategory'=>6])}}">
          <img src="/img/categoria6.png" class=" w-20" alt="..."></a>
        <a href="{{route('products.products_item_id',['idcategory'=>7])}}">
          <img src="/img/categoria7.png" class=" w-20" alt="..."></a>
        <a href="{{route('products.products_item_id',['idcategory'=>1])}}">
          <img src="/img/categoria1.png" class="w-20" alt="..."></a>
      </div>

    </div>
    <button class="carousel-control-prev play-1" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
      <span class="carousel-next " aria-hidden="true"><img src="/img/seta-esquerda.png" alt=""></span>

    </button>
    <button class="carousel-control-next play-2" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
      <div>
        <span class="carousel-next " aria-hidden="true"><img src="/img/setas-direitas.png" alt=""></span>
      </div>
    </button>
  </div>
  <section class="mt-5 section-collection">
    <div class="text-center">
      <h3>Navegue pelo seu universo favorito</h3>
    </div>
    <div class="mt-5">
      <div class="d-flex">
        <div class="d-flex info-collection">
          <img src="/img/img-colecao1.png" alt="">
          <div class=" ms-3">
            <h4>Game of thrones</h4>
            <p class="mt-4">Encontre Todos os Tipos de Acomodação de Acordo com o Seu Bolso. Sem Taxas de Reserva. Encontre o Alojamento Ideal em Booking.com.</p>
          </div>
        </div>
        <div class="d-flex info-collection2 ">
          <div class="me-3">
            <h4>Beco Diagonal</h4>
            <p class="mt-4">Encontre Todos os Tipos de Acomodação de Acordo com o Seu Bolso. Sem Taxas de Reserva. Encontre o Alojamento Ideal em Booking.com.</p>
          </div>
          <img class="rounded-1" src="/img/img-colecao2.png" alt="">
        </div>
      </div>

      <div class="d-flex mt-3">
        <div class="d-flex info-collection">

          <div class="me-3">
            <h4>Star Wars</h4>
            <p class="mt-4">Encontre Todos os Tipos de Acomodação de Acordo com o Seu Bolso. Sem Taxas de Reserva. Encontre o Alojamento Ideal em Booking.com.</p>
          </div>
          <img class="rounded-1" width="200px" height="200px" src="/img/img-colecao4.png" alt="">
        </div>
        <div class="d-flex info-collection2">
          <img class="rounded-1" src="/img/img-colecao3.png" alt="">
          <div class=" ms-3">
            <h4>Marvel</h4>
            <p class="mt-4">Encontre Todos os Tipos de Acomodação de Acordo com o Seu Bolso. Sem Taxas de Reserva. Encontre o Alojamento Ideal em Booking.com.</p>
          </div>

        </div>
      </div>

    </div>
  </section>

  <section class="mb-5 mt-5 section-books">
    <h3>Mais Populares</h3>
    <div class="d-flex ">
      @foreach($products as $product)
      <div class="mt-4 filho ">

        <div class="irma text-center">
          <img src="{{asset('storage/'.$product->photo)}}" width="100px" height="150px" alt="">
          <div class="mt-5">
            <a class="mt-5" href="">{{$product->name}}</a>
            <div>
              <img class="mt-4" src="/img/estrelas.png" alt="">
            </div>
            <h3 class="mt-4">R$ {{number_format($product->sale_price, 2, ',', '.' )}}</h3>
          </div>
          <a class="btn btn-outline-dark mt-5 home-a" href="{{route('products.show_item',$product->id)}}" class="btn btn-outline-dark mt-5">Ver mais</a>

        </div>
      </div>
      @endforeach
    </div>


  </section>

  <section>
    <div class="text-center">
      <h2>Muito mais Cultura pra você!</h2>
    </div>
    <div class="d-flex">
      <img src="/img/banner-home-1.png" width="570px" alt="">
      <img src="/img/banner-home-2.png" width="550px" style="margin-left:5px;" alt="">
    </div>
  </section>
  <section class="mt-5 section-books mb-5">
    <h2>Novidades que você precisa conhecer</h2>
    <div class="d-flex ">
      @foreach($products as $product)
      <div class="mt-4 filho ">

        <div class="irma text-center">
          <img src="{{asset('storage/'.$product->photo)}}" width="100px" height="150px" alt="">
          <div class="mt-5">
            <a class="mt-5" href="">{{$product->name}}</a>
            <div>
              <img class="mt-4" src="/img/estrelas.png" alt="">
            </div>
            <h3 class="mt-4">R$ {{number_format($product->sale_price, 2, ',', '.' )}}</h3>
          </div>
          <a href="{{route('products.show_item',$product->id)}}" class="btn btn-outline-dark mt-5 home-a">Ver mais</a>



        </div>
      </div>
      @endforeach

    </div>



  </section>



</div>


@endsection