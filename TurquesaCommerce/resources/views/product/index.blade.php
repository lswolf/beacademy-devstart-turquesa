    <h1>Listagem de Produtos</h1>
    <a href="{{ route('products.create') }}" class="btn btn-outline-dark">Novo Produto</a>

    <table class="table">
        <thead class="text-center">
            <tr>
                <th scope="col">Foto</th>
                <th scope="col">ID</th>
                <th scope="col">Nome</th>
                <th scope="col">Descrição</th>
                <th scope="col">url</th>
                <th scope="col">Preço</th>
                <th scope="col">Custo</th>
                <th scope="col">Categoria</th>
                <th scope="col">Ações</th>
            </tr>
        </thead>
        <tbody class="text-center">
        @foreach($products as $product)
            <tr>
                @if($product->photo)
                    <th><img src="{{ asset('storage/' . $product->photo) }}" width="100px" height="100px" class="rounded" alt=""></th>
                @else
                    <th><img src="{{ asset('storage/profile/avatar.jpg') }} " width="100px" height="100px" class="rounded" alt=""></th>
                @endif
                <th scope="row">{{ $product->id }}</th>
                <td>{{ $product->name }}</td>
                <td>{{ $product->description }}</td>
                <td>{{ $product->url }}</td>
                <td>{{ $product->cost_price }}</td>
                <td>{{ $product->sale_price }}</td>
                <td>{{ $product->category_id }}</td>
                <td>
                    <a href="{{ route('products.edit', $product->id) }}" class="btn btn-warning text-white">Editar</a>
                    <form action="{{ route('products.delete', $product->id) }}" method="post">
                        @method('delete')
                        @csrf
                        <button type="submit" class="btn btn-danger">Deletar</button>
                    </form>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    <div class="justify-content-center pagination">
        {{ $products->links('pagination::bootstrap-4') }}
    </div>
