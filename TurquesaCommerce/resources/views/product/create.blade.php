@extends('layouts.main')
@section('title', 'Cadastrar Produto')
@section('content')

<div class="container mb-5">
  <br>
  <h1>Gerenciador</h1>
  <a class="btn btn-outline-dark " href="{{ route('products.index') }}" role="button">Lista de Produtos</a>
  <a class="btn btn-outline-dark" href="{{ route('category.index') }}" role="button">Lista de Categorias</a>
  <a class="btn btn-outline-dark" href="{{ route('users.index') }}" role="button">Lista de Usuários</a>
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
      <label for="category_id" class="form-label">ID Categoria</label>
      <input type="text" class="form-control form control-md" id="category_id" name="category_id">
    </div>
    <button type="submit" class="btn " style="color:#ffff; background:#00A3FF;">Enviar</button>
  </form>
</div>

@endsection