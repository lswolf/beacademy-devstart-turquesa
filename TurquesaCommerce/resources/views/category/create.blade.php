@extends('layouts.main')
@section('title', 'Cadastrar Categoria')
@section('content')

<div class="container">
  <h1>Cadastrar Categoria</h1>
    <br>
    <form action="{{route('category.store')}}" method="post">
      @csrf
      <label for="name">categoria</label>
      <input type="text" name="name">
      <button type="submit">cadastrar</button>
    </form>
</div>

@endsection