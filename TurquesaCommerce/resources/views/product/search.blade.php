@extends('layouts.main')
@section('title', 'Cadastrar Produto')
@section('content')

<div id="products-container" class="col-md-12">

    <div id="cards-container" class="row">
        @foreach($products as $product)
        <div class="card col-md-3">
            <img src="{{ $product->photo }}" alt="{{ $product->name }}">
            <div class="card-body">
                <p>{{ $product -> name }}</p>
                <p>{{ $product -> description }}</p>
                <p>R${{ $product -> sale_price }}</p>
                <a href="{{ $product -> id }}" class="btn btn-primary">Saber mais</a>
            </div>
        </div>
        @endforeach
        @if(count($products) == 0 && $search)
            <p>Não foi possível encontrar nenhum produto com {{ $search }}!  <a href="/">Ver todos</p>
        @elseif(count($products) == 0)
            <p>Não há produtos!</p>
        @endif
    </div>
</div>

@endsection


