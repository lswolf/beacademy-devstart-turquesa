@extends('layouts.main')
@section('title', 'Editar Produto')
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

  <h1>Produtos: {{ $product->name }}</h1>

  @if($errors->any())
  <div class="alert alert-danger" role="alert">
    @foreach($errors->all() as $error)
    {{ $error }}<br>
    @endforeach
  </div>
  @endif


  <form action="{{ route('products.update', $product->id) }}" method="post" enctype="multipart/form-data">
    @method('put')
    @csrf
    <div class=" mb-3">
      <label for="name" class="form-label">Nome</label>
      <input type="text" class="form-control" id="name" name="name" value="{{ $product->name }}">
    </div>
    <div class="mb-3">
      <label for="description" class="form-label">Descrição</label>
      <input type="text" class="form-control" id="description" name="description" value="{{ $product->description }}">
    </div>
    <div class="mb-3">
      <label for="photo" class="form-label">Imagem</label>
      <input type="file" class="form-control form control-md" id="photo" name="photo">

      <div><img style="width:50px" src="{{asset('storage/'.$product->photo)}}" alt="Imagem da capa do livro"></div>
    </div>

    <div class="mb-3">
      <label for="url" class="form-label">URL</label>
      <input type="text" class="form-control" id="url" name="url" value="{{ $product->url }}">
    </div>
    <div class="mb-3">
      <label for="cost_price" class="form-label">Preço</label>
      <input type="text" class="form-control" id="cost_price" name="cost_price" value="{{ $product->cost_price }}">
    </div>
    <div class="mb-3">
      <label for="sale_price" class="form-label">Custo</label>
      <input type="text" class="form-control" id="sale_price" name="sale_price" value="{{ $product->sale_price }}">
    </div>
    <div class="mb-3">
      <label for="category_id" class="form-label">Categoria</label>
      <input type="text" class="form-control" id="category_id" name="category_id" value="{{ $product->category_id }}">
    </div>

    <button type="submit" class="btn btn-dark">ATUALIZAR</button>
  </form>
</div>

@endsection