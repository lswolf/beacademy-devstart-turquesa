@extends('layouts.main')
@section('title', 'Produtos')
@section('content')

<div class="d-flex ">
  <div style="width:300px ;">
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





  <section class="mb-5 mt-5 section-books">

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
            <h3 class="mt-4">R$ {{$product->sale_price}}</h3>
          </div>
          <a href="" class="btn btn-outline-dark mt-5" style="width:200px">Ver mais</a>

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