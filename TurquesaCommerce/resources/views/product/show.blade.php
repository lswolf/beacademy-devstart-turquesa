@extends('layouts.main')
@section('title', 'Lista de Produtos')
@section('content')

    <h1>Produto: {{ $product->name }}</h1>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Nome</th>
                <th scope="col">Visualizar</th>
                <th scope="col">Deletar</th>
            </tr>
        </thead>
        <tbody class="text-center">
            <tr>
                <th scope="row">{{ $product->id }}</th>
                <th scope="row">{{ $product->name }}</th>
                <td>
                    <a href="{{ route('product.edit', '$product->id') }}" class="btn btn-warning text-white">Editar</a>
                </td>
                <td>
                    <form action="{{ route('product.delete', '$product->id') }}" method="POST">
                        @method('DELETE')
                        @csrf
                        <button type="submit" class="btn btn-danger text-white">Deletar</button>
                    </form>
                </td>
            </tr>
        </tbody>
    </table>

@endsection
