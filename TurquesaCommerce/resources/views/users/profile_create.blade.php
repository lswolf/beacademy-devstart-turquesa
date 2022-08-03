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
@section('title', 'Cadastrar Usuário')
@section('content')

<div class="container">
  <br>
  <h1>Cadastrar dados</h1>

  <form class="mb-4" action="{{ route('users.store') }}" method="POST">
    @csrf


    <input type="hidden" id="password" value="{{Auth::user()->id}}" name="user_id">
    <div class="mb-3">
      <label for="phone" class="form-label">Telefone</label>
      <input type="text" class="form-control" id="phone" name="phone">
    </div>
    <div class="mb-3">
      <label for="address" class="form-label">Endereço</label>
      <input type="text" class="form-control" id="address" name="address">
    </div>
    <div class="mb-3">
      <label for="birth_date" class="form-label">Data de nascimento</label>
      <input type="date" class="form-control" id="birth_date" name="birth_date">
    </div>
    <div class="mb-3">
      <label for="cpf" class="form-label">Cpf</label>
      <input type="text" class="form-control" id="cpf" name="cpf">
    </div>


    <button type="submit" class="btn btn-primary">Enviar</button>
  </form>

</div>

@endsection