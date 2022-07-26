@extends('layouts.main')
@section('title', 'Editar Categoria')
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
<div class="container mt-4">
    <br>
    <h1>Editar Categoria</h1>
  <br>
  <form action="{{route('category.update',$category->id)}}" method="post">
    @csrf
    @method('put')
    <div class="mb-3">
      <b><label class="form-label" for="name">Categoria:</label></b>
      <input class="form-control" type="text" name="name" value="{{$category->name}}">
      <br>
      <button class="btn btn-primary" type="submit">cadastrar</button>
    </div>
    <br>
  </form>

</div>

@endsection