@extends('layouts.main')
@section('title', 'Cadastrar Produto')
@section('content')

<div class="container mb-5">
  <br>
  <h1>Gerenciador</h1>
  <div>
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
  
  <br>
  <br>

  @if($errors->any())
  <div class="alert alert-danger" role="alert">
    @foreach($errors->all() as $error)
    <li>{{ $error }}</li>
    @endforeach
  </div>
  @endif


  <br>
  <form action="{{ route('products.store') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="mb-3">
      <label for="name" class="form-label">Nome</label>
      <input type="text" class="form-control" id="name" name="name" aria-describedby="Nome">
    </div>
    <div class="mb-3">
      <label for="text" class="form-label">Descrição</label>
      <label for="description"></label><input type="text" class="form-control" id="description" name="description">
    </div>
    <div class="mb-3">
      <label for="photo" class="form-label">Imagem</label>
      <input type="file" class="form-control form control-md" id="photo" name="photo">
    </div>
    <div class="mb-3">
      <label for="url" class="form-label">URL</label>
      <input type="text" class="form-control form control-md" id="url" name="url">
    </div>
    <div class="mb-3">
      <label for="cost_price" class="form-label">Preço de custo</label>
      <input type="text" class="form-control form control-md" id="cost_price" name="cost_price">
    </div>
    <div class="mb-3">
      <label for="sale_price" class="form-label">Valor de venda</label>
      <input type="text" class="form-control form control-md" id="sale_price" name="sale_price">
    </div>




    <div class="mb-3">
      <label for="" class="form-label">Categoria</label>
      <select class="form-select" aria-label="Default select example" name="category_id">

        @foreach($categories as $category)
        <option value="{{$category->id}}">{{$category->name}}</option>
        @endforeach
      </select>
    </div>


    <button type="submit" class="btn " style="color:#ffff; background:#00A3FF;">Enviar</button>
  </form>
</div>

@endsection