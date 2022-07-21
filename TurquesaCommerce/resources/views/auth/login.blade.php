@extends('layouts.authentication')
@section('title', 'login')
@section('contentss')
@if (session('status'))
<div class="alert alert-danger" style="background-color:black ;">
  {{ session('status') }}
</div>
@endif

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

      <x-jet-validation-errors class="text-dark " />

      <div class="form-outline mb-3 ">
        <x-jet-label for=" email" class="form-label text-white " value="{{ __('Email') }}" />
        <x-jet-input id="email" class="block mt-1 w-full form-control" type="email" name="email" :value="old('email')" required autofocus />
      </div>


      <div class="form-outline mb-4">
        <x-jet-label for="password" class="form-label text-white" value="{{ __('Password') }}" />
        <x-jet-input id="password" class="block mt-1 w-full form-control" type="password" name="password" required autocomplete="current-password" />
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