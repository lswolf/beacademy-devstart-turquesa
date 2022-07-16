@extends('layouts.main')
@section('title', 'Cadastrar Produto')
@section('content')

<div class="container">
  <h1>Categorias</h1>
  <a href="{{ route('category.create') }}" class="btn btn-outline-dark">Cadastrar Categoria</a>
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