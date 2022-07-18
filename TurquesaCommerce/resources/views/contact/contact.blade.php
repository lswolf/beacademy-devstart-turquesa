@extends('layouts.main')
@section('title', 'Editar Categoria')
@section('content')
<div class="shop-title mt-3">

  <h4 class="mb-3">Contato</h4>
  <div class="shop-subtitle">
    <a href="/">Home</a><span>></span><span class="detalhe">Contato</span>
    <hr>
  </div>

</div>
<div class="d-flex index-contact">

  <div class="div-1">
    <h2>FALE CONOSCO</h2>

    <div class="filho">
      <h3>TELEFONE</h3>
      <div class="d-flex">
        <img src="/img/phone.svg" alt="">
        <div class="irma">
          <p class="irmap">(31) 3557-3333</p>
          <p>WhatsApp:(91) 99999-1990</p>
        </div>
      </div>
    </div>

    <div>
      <h3 class="mt-4">EMAIL</h3>
      <div class="d-flex">
        <img src="/img/email.svg" alt="">
        <p class="gemeos">comercial@turquesabooks.com</p>
      </div>
    </div>

    <div>
      <h3 class="mt-4">REDES SOCIAIS</h3>
      <div class="d-flex">
        <img src="/img/instagram.svg" alt="">
        <p class="gemeos">comercial@turquesabooks.com</p>
      </div>
      <div class="d-flex">
        <img src="/img/facebook.svg" alt="">
        <p class="gemeos" comercial@turquesabooks.com</p>
      </div>
      <div class="d-flex">
        <img src="/img/twitter.svg" alt="">
        <p class="gemeos">comercial@turquesabooks.com</p>
      </div>
    </div>
  </div>

  <div class="div-2">
    <h3>INFORMAÇÕES DE CONTATO</h3>

    <form action="" method="POST">
      @csrf
      <div class="mb-3">
        <label for="name" class="form-label"></label>
        <input type="text" class="form-control" id="name" name="name" placeholder="Nome*">
      </div>
      <div class="mb-3">
        <label for="email" class="form-label"></label>
        <input type="email" class="form-control" id="email" name="email" placeholder="Email*">
      </div>
      <div class="mb-3">
        <label for="phone" class="form-label"></label>
        <input type="phone" class="form-control" id="phone" name="phone" placeholder="Telefone*">
      </div>
      <div class="mb-3">
        <textarea name="" id="" cols="80" rows="10" placeholder="Comentario*"></textarea>
      </div>
      <button type="submit" class="btn btn-dark">Enviar</button>
    </form>
  </div>

</div>

@endsection