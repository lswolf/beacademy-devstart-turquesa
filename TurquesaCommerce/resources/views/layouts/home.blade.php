@extends('layouts.main')
@section('title', 'home')
@section('content')
<div class="banner">
  <img src="/img/capa-home.png" alt="">
</div>
<div class="container section-category">
  <h2>Livros</h2>
  <div id="carouselExampleControls" class="carousel " data-bs-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active ">
        <img src="/img/categoria1.png" class=" w-20" alt="...">
        <img src="/img/categoria2.png" class="w-20" alt="...">
        <img src="/img/categoria3.png" class=" w-20" alt="...">
        <img src="/img/categoria4.png" class=" w-20" alt="...">
      </div>
      <div class="carousel-item">
        <img src="/img/categoria5.png" class=" w-20" alt="...">
        <img src="/img/categoria6.png" class=" w-20" alt="...">
        <img src="/img/categoria7.png" class=" w-20" alt="...">
        <img src="/img/categoria1.png" class="w-20" alt="...">
      </div>

    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>

    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
      <div>
        <span class="carousel-control-next-icon " aria-hidden="true"></span>
      </div>
    </button>
  </div>
  <section class="mt-5 section-collection">
    <h3>Navegue pelo seu universo favorito</h3>
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

    <div class="mt-4 filho">

      <div class="irma">
        <img src="/img/livro.png" alt="">
        <a class="mt-3" href="">dracula de luxo</a>
        <img class="mt-4" src="/img/estrelas.png" alt="">
        <h3 class="mt-4">R$ 34,99</h3>
        <button class="btn btn-primary mt-5">Ver mais</button>

      </div>
    </div>


  </section>

</div>


@endsection