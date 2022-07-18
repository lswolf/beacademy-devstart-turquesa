@extends('layouts.authentication')
@section('title', 'login')
@section('contentss')

<div class="d-flex">

  <div class="logo-banner">
    <img src="/img/banner-login.svg" alt="">
  </div>

  <div class="justify-content-center w-100 form-login">

    <form method="POST" action="{{ route('login') }}">
      @csrf

      <div class="mb-4 filho">
        <a href="/">
          <img src="/img/logo.svg" alt="" class="mb-3">
          <img src="/img/TurquesaBooks.svg" alt="">
        </a>
      </div>
      <div <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Email</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" />
      </div>


      <div <div class="mb-3">
        <label class="form-label" for="form2Example2">Senha</label>
        <input type="password" id="form2Example2" class="form-control" name="password" />
      </div>
      <div class="col mb-5">

        <a href="{{ route('password.request') }}">Esqueceu a Senha?</a>
        <div>
          <a href="{{ route('register') }}">Ainda nao e cadastrado
            se cadastre agora!! Aqui</a>
        </div>
      </div>


      <button type="submit" class="btn btn-dark btn-block mb-4 w-100">Entrar</button>
    </form>
  </div>
</div>
@endsection