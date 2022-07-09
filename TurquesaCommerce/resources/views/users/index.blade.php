@extends('layouts.main')
@section('title', 'Cadastrar Produto')
@section('content')

<div class="container">
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
          <a class="btn btn-warning" href="{{ route('users.show', $user->id) }}">visualizar</a>
        </td>

      </tr>
      @endforeach
    </tbody>
  </table>
</div>

@endsection