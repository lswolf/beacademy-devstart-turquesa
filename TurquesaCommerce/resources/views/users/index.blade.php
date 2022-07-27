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
  <br>
  <h1>Listagem de Usuário</h1>

  <table class="table">
    <thead class="text-center">
      <tr>
        <th scope="col">ID</th>
        <th scope="col">Nome</th>
        <th scope="col">E-mail</th>
        <th scope="col">telefone</th>
        <th scope="col">endereço</th>
        <th scope="col">Data de nascimento</th>
        <th scope="col">cpf</th>
        <th scope="col">Data Cadastro</th>
        <th scope="col">Ações</th>
      </tr>
    </thead>
    <tbody class="text-center">
      @foreach($users as $user)
      <tr>
        <th scope="row">{{ $user->user_id}}</th>
        <td>{{ $user->user->name }}</td>
        <td>{{ $user->user->email }}</td>
        <td>{{ $user->phone }}</td>
        <td>{{ $user->address }}</td>
        <td>{{ $user->birth_date }}</td>
        <td>{{ $user->cpf }}</td>
        <td>{{ date('d/m/Y - H:i', strtotime($user->user->created_at)) }}</td>
        <td>
          <div class="d-flex" >
            <div>
          <a class="btn btn-warning" href="{{ route('users.show', $user->id) }}">visualizar</a>
          </div>
          <div style="margin-left:10px; ">
          <a class="btn btn-dark" href="{{ route('users.user-order', $user->user_id) }}">visualizar pedidos</a>
          </div>  
        </div>
          
        </td>

      </tr>
      @endforeach
    </tbody>
  </table>
</div>

@endsection