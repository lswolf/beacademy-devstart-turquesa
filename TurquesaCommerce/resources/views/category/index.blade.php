@extends('layouts.main')
@section('title', 'Cadastrar Produto')
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
  <h1>Lista de Categorias</h1>
  
  <table class="table">
    <thead>
      <tr>

        <th scope="col">Nome da categoria</th>
        <th scope="col">ações</th>

      </tr>
    </thead>
    <tbody>

      @foreach($categories as $category )
      <tr>


        <td>
          <p>{{$category->name}}</p>
        </td>
        <td>
          <div class="d-flex index-cat">
            <form action="{{route('category.destroy',$category->id)}}" method="post">
              @csrf
              @method('delete')
              <button type="submit" class="btn btn-danger">deletar</button>
            </form>

            <a href="{{route('category.edit',$category->id)}}" class="btn btn-warning">editar</a>
          </div>
        </td>


      </tr>
      @endforeach

    </tbody>
  </table>
</div>'

@endsection