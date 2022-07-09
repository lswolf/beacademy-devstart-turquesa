@extends('layouts.main')
@section('scriptsjs')
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js" integrity="sha512-pHVGpX7F/27yZ0ISY+VVjyULApbDlD0/X0rgGbTqCE7WFW5MezNTWG/dnhtbBuICzsd0WQPgpE4REBLv+UqChw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
$(function() {
  $('#cpf').mask('000.000.000.00');
  $('#phone').mask('(00) 00000-0000');
})
</script>
@endsection
@section('title', 'ver usuario')
@section('content')
<div class="container">
  @foreach($users as $user)
  @if($user->user_id == Auth::user()->id)
  <h1>Alterar dados de {{$user->user->name}} </h1>
  <a href="{{route('users.index')}}" class="btn btn-outline-dark">Voltar para a lista</a>
  <form action="{{ route('users.update_user',$user->id) }}" method="post">
    @csrf
    @method('put')
    <div class="mb-3">
      <label for="name" class="form-label">Nome</label>
      <input type="text" class="form-control" value="{{$user->user->name}}" id="name" name="name">
    </div>
    <div class="mb-3">
      <label for="email" class="form-label">Email</label>
      <input type="text" class="form-control" value="{{$user->user->email}}" id="email" name="email">
    </div>
    <div class="mb-3">
      <label for="phone" class="form-label">Telefone</label>
      <input type="text" class="form-control" value="{{$user->phone}}" id="phone" name="phone">
    </div>
    <div class="mb-3">
      <label for="address" class="form-label">Endereço</label>
      <input type="text" class="form-control" value="{{$user->address}}" id="address" name="address">
    </div>
    <div class="mb-3">
      <label for="birth_date}" class="form-label">Data de nascimento</label>
      <input type="date" class="form-control" value="{{$user->birth_date}}" id="birth_date}" name="birth_date}">
    </div>
    <div class="mb-3">
      <label for="cpf" class="form-label">Data de nascimento</label>
      <input type="text" class="form-control" value="{{$user->cpf}}" id="cpf" name="cpf">
    </div>



    <button type="submit" class="btn btn-primary">editar</button>
  </form>
  <form action="" method="post">
    @csrf
    @method('delete')
    <button type="submit">Deletar</button>
  </form>
  @endif
  @endforeach
</div>
@endsection