@extends('layouts.main')
@section('title', 'Cadastrar Usuário')
@section('content')

<div class="container">
  <br>
  <h1>Criar Usuário</h1>
  <br>

  @if($errors->any())
    <div class="alert alert-danger" role="alert">
      @foreach($errors->all() as $error)
        <li>{{ $error }}</li>
      @endforeach 
    </div>
  @endif

  <form action="{{ route('users.store') }}" method="POST">
      @csrf
      <div class="mb-3">
        <label for="name" class="form-label">Name</label>
        <input type="text" class="form-control" id="name" name="name">
      </div>
      <div class="mb-3">
        <label for="email" class="form-label">E-mail</label>
        <input type="email" class="form-control" id="email" name="email">
      </div>
      <div class="mb-3">
          <label for="password" class="form-label">Senha</label>
          <input type="password" class="form-control" id="password" name="password">
        </div>
        
      <button type="submit" class="btn btn-primary">Enviar</button>
    </form>
  </div>
@endsection