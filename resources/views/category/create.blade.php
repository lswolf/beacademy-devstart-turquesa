@extends('layouts.main')
@section('title', 'Cadastrar Categoria')
@section('content')
<div class="container">
<h1>Gerenciador</h1>
  <div class="dropdown">
  <button class="btn btn-dark dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Produtos
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="{{route('products.create')}}">criar Produtos</a>
    <a class="dropdown-item" href="{{route('products.index')}}">lista de Produtos</a>
  </div>
</div>
<div class="dropdown">
  <button class="btn btn-dark dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  Categorias
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="{{route('category.create')}}">criar Categorias</a>
    <a class="dropdown-item" href="{{route('category.index')}}">lista de categorias</a>
  </div>
</div>
<div class="dropdown">
  <button class="btn btn-dark dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
 Usuários
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" >
    <a class="dropdown-item" href="{{route('users.index')}}">lista de usuarios</a>

  </div>
</div>
</div>

<div class="container mb-5 create-cat mt-4">
  <h1>Cadastrar Categoria</h1>
  <br>
  <form action="{{route('category.store')}}" method="post">
    @csrf
    <label for="name" class="form-label">categoria</label>
    <input type="text" name="name" class="form-control">
    <button type="submit" class="btn mt-3" ">cadastrar</button>
  </form>
</div>

@endsection