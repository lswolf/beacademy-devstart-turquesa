@extends('layouts.main')
@section('title', 'Cadastrar Categoria')
@section('content')

<div class="container mb-5 create-cat">
  <h1>Cadastrar Categoria</h1>
  <br>
  <form action="{{route('category.store')}}" method="post">
    @csrf
    <label for="name" class="form-label">categoria</label>
    <input type="text" name="name" class="form-control">
    <button type="submit" class="btn mt-3" ">cadastrar</button>
  </form>
</div>

@endsection