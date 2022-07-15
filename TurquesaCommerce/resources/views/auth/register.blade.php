@extends('layouts.authentication')
@section('title', 'Register')
@section('contentss')
<div class="d-flex">
  <div class="">
    <img src="/img/banner-cadastro.svg" alt="" width="650px" height="625px">
  </div>
  <div class="justify-content-center  w-100 form-login">

    <form method="POST" action="{{ route('register') }}" style="padding-top:50px ;">
      @csrf

      <div class="mb-4 filho">
        <img src="/img/logo.svg" alt="" class="mb-3">
        <img src="/img/TurquesaBooks.svg" alt="">
      </div>

      <div class="form-outline mb-4">
        <label class="form-label" for="name">Nome</label>
        <input type="text" id="name" class="form-control" name="name" />
      </div>

      <div class="form-outline mb-4">
        <label class="form-label" for="email">Email</label>
        <input type="email" id="email" class="form-control" name="email" />
      </div>


      <div class="form-outline mb-4">
        <label class="form-label" for="password">Senha</label>
        <input type="password" id="password" class="form-control" name="password" />
      </div>

      <div class="form-outline mb-4">
        <label class="form-label" for="password_confirmation">Confirme a Senha</label>
        <input type="password" id="password_confirmation" class="form-control" name="password_confirmation" required />
      </div>
      <div class="col mb-3">

        <a href="{{ route('login') }}">já possui conta? Clique Aqui!!</a>

      </div>

      <button type="submit" class="btn btn-dark btn-block mb-4 w-100">Registrar</button>
    </form>
  </div>
</div>
@endsection