@extends('layouts.main')
@section('title', 'Cadastrar Produto')
@section('content')

<div class="container">
  <br>
  <h1>Listagem de Produtos</h1>
  <a href="{{ route('products.create') }}" class="btn btn-outline-dark">Novo Produto</a>

  <table class="table">
    <thead class="text-center">
      <tr>
        <th scope="col">Foto</th>
        <th scope="col">ID</th>
        <th scope="col">Nome</th>
        <th scope="col">Descrição</th>
        <th scope="col">url</th>
        <th scope="col">Preço</th>
        <th scope="col">Custo</th>
        <th scope="col">Categoria</th>
        <th scope="col">Ações</th>
      </tr>
    </thead>
    <tbody class="text-center">
      @foreach($products as $product)
      <tr>

        @if($product->photo)
        <td><img style="width:50px;" src="{{ asset('storage/' . $product->photo) }}" width="50px" height="50px" alt="Capa do Livro"></td>
        @else
        <td><img style="width:50px;" src="{{ asset('storage/profile/avatar-livro.jpg') }}" width="50px" height="50px" alt="Capa do Livros"></td>
        @endif
        <th scope="row">{{ $product->id }}</th>
        <td>{{ $product->name }}</td>
        <td>{{ $product->description }}</td>
        <td>{{ $product->url }}</td>
        <td>R$ {{number_format($product->cost_price, 2, ',', '.' )}}</td>
        <td>R$ {{number_format($product->sale_price, 2, ',', '.' )}}</td>
        <td>{{ $product->category_id }}</td>
        <td>
          <div class="d-flex">
            <a href="{{ route('products.edit', $product->id) }}" class="btn btn-warning text-white" style="margin-right:10px;">Editar</a>
            <form action="{{ route('products.delete', $product->id) }}" method="post">
              @method('delete')
              @csrf
              <button type="submit" class="btn btn-danger">Deletar</button>
            </form>
          </div>
        </td>
      </tr>
      @endforeach
    </tbody>
  </table>
  <div class="justify-content-center pagination">
    {{ $products->links('pagination::bootstrap-4') }}
  </div>
</div>
@endsection