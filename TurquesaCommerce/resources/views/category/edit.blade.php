@extends('layouts.main')
@section('title', 'Editar Categoria')
@section('content')

<div class="container">
    <br>
    <h1>Editar Categoria</h1>
  <br>
  <form action="{{route('category.update',$category->id)}}" method="post">
    @csrf
    @method('put')
    <div class="mb-3">
      <b><label class="form-label" for="name">Categoria:</label></b>
      <input class="form-control" type="text" name="name" value="{{$category->name}}">
      <br>
      <button class="btn btn-primary" type="submit">cadastrar</button>
    </div>
    <br>
  </form>

</div>

@endsection