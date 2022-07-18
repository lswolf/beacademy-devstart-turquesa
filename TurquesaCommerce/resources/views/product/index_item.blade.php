@extends('layouts.main')
@section('title', 'Produtos')
@section('content')
<div class="shop-title mt-3">

  <h4 class="mb-3">Fazer compras</h4>
  <div class="shop-subtitle">
    <a href="/">Home</a><span>></span><span class="detalhe">Loja</span>
    <hr>
  </div>

</div>
<div class="d-flex container">
  <div style="width:300px ;  margin-top:50px;">
    <h3>categorias</h3>

    <div class=" list-group">

      @if(isset($listcategories) && count($listcategories)>0 )
      <a href="{{route('products.products_item')}}" class="list-group-item list-group-item-action @if(0 == $idcategory) active @endif ">Geral</a>
      @foreach($listcategories as $id => $category)
      <a href="{{route('products.products_item_id',['idcategory'=>$category->id])}}" class="list-group-item list-group-item-action @if($category->id == $idcategory) active @endif ">{{$category->name}}</a>
      @endforeach

      @endif
    </div>
  </div>





  <section class="mb-5 mt-5 section-books" style="margin-left: 50px;">
    <p>
      Exibindo 1–12 de 126 resultados</p>
    <div class="d-flex flex-wrap ">


      @foreach($products as $product)
      <div class="filho" style="margin-left:10px; margin-top:10px;">
        <div class="irma text-center" style="padding-left: 10px;">
          <img src="{{asset('storage/'.$product->photo)}}" width="100px" height="150px" alt="">
          <div class="mt-5">
            <a class="mt-5" href="">{{$product->name}}</a>
            <div>
              <img class="mt-4" src="/img/estrelas.png" alt="">
            </div>
            <h3 class="mt-4">R$ {{number_format($product->sale_price, 2, ',', '.' )}}</h3>
          </div>
          <a href="{{route('products.show_item',$product->id)}}" class="btn btn-outline-dark mt-5" style="width:200px">Ver mais</a>

        </div>
      </div>
      @endforeach
    </div>
  </section>
</div>

<div class="justify-content-center pagination">
  {{$products->links('pagination::bootstrap-4')}}
</div>

</div>




@endsection